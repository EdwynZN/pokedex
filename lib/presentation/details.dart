import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/presentation/controller/pokedex_store.dart';
import 'package:poke_app/presentation/controller/pokemon_details_store.dart';
import 'package:poke_app/presentation/model/detail_base_info.dart';
import 'package:poke_app/presentation/widget/bloc_sliver.dart';
import 'package:poke_app/presentation/widget/detail_pokemon_card.dart';
import 'package:poke_app/presentation/widget/error_header.dart';
import 'package:poke_app/presentation/widget/evolution_card.dart';
import 'package:poke_app/presentation/widget/favorite_icon_button.dart';
import 'package:poke_app/presentation/widget/pokeball_loader.dart';
import 'package:poke_app/presentation/widget/type_chip.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:poke_app/utils/string_extensions.dart';
import 'package:poke_app/utils/theme.dart';
import 'package:provider/provider.dart';

class PokemonDetailsScreen extends HookWidget {
  final PokemonShallow? pokemon;

  const PokemonDetailsScreen({super.key, this.pokemon});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController(keys: const []);
    final ValueNotifier<ThemeFlex?> themeState = useState<ThemeFlex?>(null);
    final showFABState = useState(false);
    useEffect(() {
      void listenScroll() {
        final position = scrollController.position;
        if (position.extentBefore > (position.viewportDimension / 2)) {
          showFABState.value = true;
        } else {
          showFABState.value = false;
        }
      }

      scrollController.addListener(listenScroll);
      return () => scrollController.removeListener(listenScroll);
    }, [scrollController, showFABState]);

    Widget child = Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Observer(
          builder: (context) {
            final detail = context.watch<PokemonDetailStore>();
            final name = detail.name ?? '';
            return Text(name);
          },
        ),
        actions: [
          Observer(
            builder: (context) {
              final detail = context.watch<PokemonDetailStore>();
              final bool shouldIgnore = [
                detail.isLoading,
                detail.error != null,
                detail.isFavLoading,
              ].any((element) => element);
              final isFavorite = detail.data?.isFavorite ?? false;
              return FavoriteButton(
                isLoading: detail.isFavLoading,
                onPressed: shouldIgnore
                    ? null
                    : () => detail.changeFavorite(!isFavorite),
                isFavorite: isFavorite,
              );
            },
          ),
        ],
      ),
      body: Observer(
        builder: (context) {
          final detail = context.watch<PokemonDetailStore>();
          final List<Widget> list;
          if (detail.isLoading) {
            list = [
              if (pokemon != null) ...[
                DetailPokemonCard.fromPokemonShallow(pokemon: pokemon!),
                const SliverToBoxAdapter(child: gap8),
              ],
              const SliverToBoxAdapter(child: PokeballLoader()),
            ];
          } else if (detail.error != null) {
            final error = detail.error!;
            list = [
              if (error is ItemFailure)
                SliverErrorHeader(
                  title:
                      'There is no information of this pokemon in our pokedex',
                  onPressed: () => GoRouter.of(context).go('/'),
                )
              else
                SliverErrorHeader(
                  title: 'There is a problem fetching this pokemon, try again',
                  onPressed: detail.reload,
                )
            ];
          } else if (detail.data != null) {
            final data = detail.data!;
            list = [
              DetailPokemonCard(
                id: data.id,
                name: data.name,
                image: data.image,
                detailBaseInfo: DetailBaseInfo(
                  pokemonHeight: data.height,
                  pokemonWeight: data.weight,
                  xp: data.baseExperience,
                ),
                sprites: [
                  data.sprite.front,
                  data.sprite.back,
                  if (data.femaleSprite != null) ...[
                    data.femaleSprite!.front,
                    data.femaleSprite!.back,
                  ],
                  if (data.shinySprite != null) ...[
                    data.shinySprite!.front,
                    data.shinySprite!.back,
                  ],
                  if (data.shinyFemaleSprite != null) ...[
                    data.shinyFemaleSprite!.front,
                    data.shinyFemaleSprite!.back,
                  ],
                ],
              ),
              const SliverToBoxAdapter(child: gap8),
              _TypesWidget(types: data.types),
              if (data.evolution.isNotEmpty) ...[
                const SliverToBoxAdapter(child: gap8),
                _EvolutionCards(evolutions: data.evolution),
              ],
              const SliverToBoxAdapter(child: gap8),
              _StatsSiLiver(stats: data.stats),
              const SliverToBoxAdapter(child: gap8),
              _AbilitiesSiLiver(abilities: data.abilities),
              const SliverToBoxAdapter(child: gap8),
              SliverSafeArea(
                top: false,
                sliver: _MovesSliver(moves: data.movements),
              ),
            ];
          } else {
            list = const [];
          }
          return CustomScrollView(
            controller: scrollController,
            slivers: list,
          );
        },
      ),
      floatingActionButton: showFABState.value
          ? FloatingActionButton(
              onPressed: () => scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOutCubicEmphasized,
              ),
              child: const Icon(Icons.arrow_upward_outlined),
            )
          : null,
    );

    final theme = themeState.value;
    if (theme != null) {
      child = Theme(
        data: Theme.of(context).brightness == Brightness.light
            ? theme.light
            : theme.dark,
        child: child,
      );
    }

    return MultiReactionBuilder(
      key: const ValueKey('Reaction'),
      builders: [
        ReactionBuilder(
          key: const ValueKey('FavReaction'),
          builder: (context) {
            final detailStore = context.read<PokemonDetailStore>();
            final pokedexStore = context.read<PokedexStore>();
            return reaction(
              (_) => detailStore.data?.isFavorite,
              (isFavorite) {
                if (isFavorite == null) {
                  return;
                }
                pokedexStore.updateFavorite(
                  id: detailStore.id,
                  isFavorite: isFavorite,
                );
              },
              equals: (curr, prev) => curr == prev || curr == null,
            );
          },
        ),
        ReactionBuilder(
          key: const ValueKey('FavErrorReaction'),
          builder: (innerContext) {
            final detailStore = innerContext.read<PokemonDetailStore>();
            return reaction(
              (_) => detailStore.favError != null,
              (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Error updating favorite state'),
                  ),
                );
              },
              equals: (curr, prev) => curr == prev || curr == false,
            );
          },
        ),
        ReactionBuilder(
          key: const ValueKey('ThemeReaction'),
          builder: (context) {
            final detailStore = context.read<PokemonDetailStore>();
            return reaction(
              (_) {
                final color = detailStore.data?.color;
                return color != null && color.isNotEmpty ? color : '';
              },
              (color) {
                themeState.value = ThemeFlex.fromString(color);
              },
            );
          },
        ),
      ],
      child: child,
    );
  }
}

class _EvolutionCards extends HookWidget {
  final List<PokemonEvolution> evolutions;

  // ignore: unused_element
  const _EvolutionCards({super.key, required this.evolutions});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      sliver: BlockSliver(
        title: 'Evolutions',
        sliver: SliverPadding(
          padding: const EdgeInsets.all(12.0),
          sliver: SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 120,
              childAspectRatio: 0.8,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 0.0,
            ),
            itemBuilder: (context, index) => EvolutionCard(pokemon: evolutions[index]),
            itemCount: evolutions.length,
          ),
        ),
      ),
    );
  }
}

class _TypesWidget extends HookWidget {
  final List<PokemonType> types;

  // ignore: unused_element
  const _TypesWidget({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = useMemoized(
      () {
        return types
            .map(
              (t) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: TypeChip(
                  name: t.name.toTitleCase(),
                  color: switch (t.name) {
                    'grass' => Colors.green.shade600,
                    'water' => Colors.blue.shade600,
                    'poison' => Colors.purple.shade600,
                    'fire' => Colors.orange.shade600,
                    _ => Colors.grey.shade600,
                  },
                ),
              ),
            )
            .toList();
      },
      types,
    );
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        height: 32.0,
        alignment: Alignment.centerLeft,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}

class _StatsSiLiver extends HookWidget {
  final List<Stat> stats;

  // ignore: unused_element
  const _StatsSiLiver({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final color = theme.colorScheme.tertiary;
    final List<TableRow> list = useMemoized(() {
      const style = TextStyle(
        wordSpacing: 0.15,
        letterSpacing: 0.15,
        fontWeight: FontWeight.bold,
      );
      return stats
          .map(
            (s) => TableRow(
              children: [
                Text(
                  '${s.name.toUpperCase()} (${s.value})',
                  style: style,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 6.0),
                  padding: const EdgeInsets.all(6.0),
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: const StadiumBorder(),
                    color: color.withOpacity(0.24),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: LinearProgressIndicator(
                      minHeight: 8.0,
                      backgroundColor: Colors.transparent,
                      color: color,
                      value: s.value / 200,
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList();
    }, [color, ...stats]);
    final child = DefaultTextStyle.merge(
      style: textTheme.bodyLarge,
      child: Table(
        columnWidths: const {
          0: FlexColumnWidth(),
          1: MaxColumnWidth(
            FixedColumnWidth(150.0),
            FractionColumnWidth(0.35),
          ),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        textBaseline: TextBaseline.alphabetic,
        border: const TableBorder(),
        children: list,
      ),
    );
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      sliver: BlockSliver(
        title: 'Stats',
        sliver: SliverToBoxAdapter(child: child),
      ),
    );
  }
}

class _AbilitiesSiLiver extends StatelessWidget {
  final List<Ability> abilities;

  // ignore: unused_element
  const _AbilitiesSiLiver({super.key, required this.abilities});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      sliver: BlockSliver(
        title: 'Abilities',
        sliver: DecoratedSliver(
          decoration: ShapeDecoration(
            color: theme.colorScheme.secondaryContainer,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24.0))),
          ),
          sliver: SliverPadding(
            padding: const EdgeInsets.all(12.0),
            sliver: SliverList.builder(
              itemBuilder: (context, index) {
                final ability = abilities[index];
                return ListTile(
                  leading: Icon(
                    ability.secret
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  title: Text(
                    ability.name.toTitleCase(),
                    style: theme.textTheme.headlineSmall,
                  ),
                  dense: true,
                );
              },
              itemCount: abilities.length,
            ),
          ),
        ),
      ),
    );
  }
}

class _MovesSliver extends StatelessWidget {
  final List<Move> moves;

  // ignore: unused_element
  const _MovesSliver({super.key, required this.moves});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      sliver: BlockSliver(
        title: 'Movements',
        sliver: DecoratedSliver(
          decoration: ShapeDecoration(
            color: theme.colorScheme.secondaryContainer,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24.0))),
          ),
          sliver: SliverPadding(
            padding: const EdgeInsets.all(12.0),
            sliver: SliverList.builder(
              itemBuilder: (context, index) {
                final move = moves[index];
                return ListTile(
                  leading: Icon(
                    Icons.double_arrow_sharp,
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  title: Text(
                    move.name.toTitleCase(),
                    style: theme.textTheme.headlineSmall,
                  ),
                  dense: true,
                );
              },
              itemCount: moves.length,
            ),
          ),
        ),
      ),
    );
  }
}
