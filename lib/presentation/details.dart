import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_app/assets/pokemon_icons.dart';
import 'package:poke_app/controller/pokemon_details_store.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/presentation/widget/bloc_sliver.dart';
import 'package:poke_app/presentation/widget/error_header.dart';
import 'package:poke_app/presentation/widget/page_indicator.dart';
import 'package:poke_app/presentation/widget/type_chip.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:poke_app/utils/string_extensions.dart';
import 'package:poke_app/utils/theme.dart';
import 'package:provider/provider.dart';

class PokemonDetailsScreen extends HookWidget {
  const PokemonDetailsScreen({super.key});

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
      ),
      body: Observer(
        builder: (context) {
          final detail = context.watch<PokemonDetailStore>();
          final List<Widget> list;
          if (detail.isLoading) {
            list = const [
              SliverToBoxAdapter(
                child: LinearProgressIndicator(minHeight: 8.0),
              ),
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
              _DetailPokemonCard(
                id: data.id,
                name: data.name,
                image: data.image,
                pokemnoHeight: data.height,
                pokemnoWeight: data.weight,
                xp: data.baseExperience,
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
              const SliverToBoxAdapter(child: gap8),
              _StatsSiLiver(stats: data.stats),
              const SliverToBoxAdapter(child: gap8),
              _AbilitiesSiLiver(abilities: data.abilities),
              const SliverToBoxAdapter(child: gap8),
              SliverSafeArea(
                top: false,
                sliver: _MovesSiLiver(moves: data.movements),
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

    return ReactionBuilder(
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
      child: child,
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

class _DetailPokemonCard extends StatelessWidget {
  final int id;
  final String name;
  final List<String> sprites;
  final String image;
  final int pokemnoHeight;
  final int pokemnoWeight;
  final int xp;

  const _DetailPokemonCard({
    // ignore: unused_element
    super.key,
    this.sprites = const [],
    required this.id,
    required this.name,
    required this.image,
    required this.pokemnoHeight,
    required this.pokemnoWeight,
    required this.xp,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.primaryContainer;

    final asset = Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(
          width: 140.0,
          height: 140.0,
        ),
        child: Ink(
          child: InkWell(
            customBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            highlightColor: Colors.transparent,
            splashColor: color.withOpacity(0.12),
            onTap: () async {
              await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                isDismissible: true,
                elevation: 4.0,
                enableDrag: true,
                constraints: const BoxConstraints.tightFor(
                  height: 400.0,
                ),
                showDragHandle: true,
                builder: (_) => _ImageGallerySheet(
                  images: sprites,
                ),
              );
            },
            child: SvgPicture.network(
              image,
              semanticsLabel: name,
              height: 140.0,
              width: 120.0,
              allowDrawingOutsideViewBox: false,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              placeholderBuilder: (BuildContext context) => const Image(
                image: AssetImage(PokemonIcons.pokeball),
                height: 140.0,
                width: 120.0,
              ),
            ),
          ),
        ),
      ),
    );

    final Widget info = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '#$id',
          style: const TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w600,
            height: 0.0,
          ),
          maxLines: 1,
        ),
        gap8,
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 250),
          child: Card(
            elevation: 1.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _RowTable(
                    title: 'Height',
                    detail: '${pokemnoHeight * 10} cm',
                  ),
                  const Divider(height: 16.0),
                  _RowTable(
                    title: 'Weight',
                    detail: '${pokemnoWeight / 10} kg',
                  ),
                  const Divider(height: 16.0),
                  _RowTable(
                    title: 'Base XP',
                    detail: '${pokemnoHeight * 10} xp',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final Widget child = DefaultTextStyle.merge(
      style: TextStyle(color: theme.colorScheme.onSecondaryContainer),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            asset,
            gap12,
            Expanded(child: info),
          ],
        ),
      ),
    );

    return SliverToBoxAdapter(
      child: Card(
        elevation: 0.0,
        color: theme.colorScheme.secondaryContainer.withOpacity(0.36),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          side: BorderSide(
            color: theme.colorScheme.secondary,
            width: 1.5,
          ),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: child,
      ),
    );
  }
}

class _RowTable extends StatelessWidget {
  final String title;
  final String detail;
  // ignore: unused_element
  const _RowTable({super.key, required this.detail, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            height: 0.0,
          ),
          maxLines: 1,
        ),
        const Spacer(),
        Text(
          detail,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            height: 0.0,
          ),
          maxLines: 1,
        ),
      ],
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

class _AbilitiesSiLiver extends HookWidget {
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

class _MovesSiLiver extends HookWidget {
  final List<Move> moves;

  // ignore: unused_element
  const _MovesSiLiver({super.key, required this.moves});

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

class _ImageGallerySheet extends StatelessWidget {
  final List<String> images;

  _ImageGallerySheet({
    // ignore: unused_element
    super.key,
    required this.images,
  }) : assert(images.isNotEmpty);

  @override
  Widget build(BuildContext context) {
    final manager = context.watch<CacheManager>();
    return DraggableScrollableSheet(
      expand: false,
      maxChildSize: 1,
      initialChildSize: 1,
      builder: (context, scrollController) {
        return HookBuilder(
          builder: (context) {
            final controller = usePageController(keys: const []);
            return SafeArea(
              top: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: controller,
                      itemBuilder: (context, index) {
                        final image = images[index];
                        return CachedNetworkImage(
                          memCacheHeight: 150,
                          height: 150,
                          width: 150,
                          memCacheWidth: 150,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                          cacheManager: manager,
                          imageUrl: image,
                          placeholder: (_, __) => const Center(
                            child: Image(
                              image: AssetImage(PokemonIcons.pokeball),
                              height: 32.0,
                              width: 32.0,
                            ),
                          ),
                        );
                      },
                      itemCount: images.length,
                    ),
                  ),
                  gap8,
                  PageIndicator(controller: controller, count: images.length),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
