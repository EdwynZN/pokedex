import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_app/controller/filter_store.dart';
import 'package:poke_app/controller/pokedex_store.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/presentation/model/field_option.dart';
import 'package:poke_app/presentation/widget/sheet_options.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:provider/provider.dart';

enum _AnimationStatus { start, run, end }

class FilterBar extends HookWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.read<FilterStore>();
    final animationController = useAnimationController(
      animationBehavior: AnimationBehavior.preserve,
      duration: const Duration(milliseconds: 450),
      initialValue: !store.isLoading && !store.hasError ? 0 : 1.0,
      keys: const [],
    );
    final theme = Theme.of(context);
    final appbarBackground = theme.appBarTheme.backgroundColor;
    final scaffoldBackgroundColor = theme.scaffoldBackgroundColor;
    final decoration = useMemoized<Decoration>(
      () {
        return BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            tileMode: TileMode.decal,
            stops: const [0.0, 0.75],
            colors: [
              scaffoldBackgroundColor,
              appbarBackground ?? Colors.transparent,
            ],
          ),
        );
      },
      [
        appbarBackground,
        scaffoldBackgroundColor,
      ],
    );
    return ReactionBuilder(
      builder: (context) {
        final store = context.read<FilterStore>();
        return reaction<_AnimationStatus>(
          (_) {
            if (store.isLoading) {
              return _AnimationStatus.run;
            } else if (store.hasError) {
              return _AnimationStatus.start;
            } else {
              return _AnimationStatus.end;
            }
          },
          (status) {
            switch (status) {
              case _AnimationStatus.start:
                animationController.animateTo(0.5);
                break;
              case _AnimationStatus.run:
                animationController.repeat(reverse: true);
                break;
              case _AnimationStatus.end:
              default:
                animationController.forward();
                break;
            }
          },
          fireImmediately: true,
        );
      },
      child: Container(
        decoration: decoration,
        width: double.infinity,
        child: Column(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8.0,
              ),
              scrollDirection: Axis.horizontal,
              child: FadeTransition(
                opacity: animationController,
                child: const _FilterRow(),
              ),
            ),
            Observer(
              builder: (context) {
                final store = context.watch<PokedexStore>();
                final isLoadingPokemons = store.isLoading && store.hasValue;
                return LinearProgressIndicator(
                  backgroundColor: Colors.transparent,
                  value: isLoadingPokemons ? null : 0,
                  borderRadius: BorderRadius.circular(4.0),
                  minHeight: 2.0,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterRow extends StatelessObserverWidget {
  // ignore: unused_element
  const _FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    final store = context.watch<FilterStore>();
    final isDisable = store.isLoading || store.hasError;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InputChip(
          showCheckmark: false,
          selected: store.hasFilterType,
          avatar: const Icon(Icons.arrow_drop_down),
          label: const Text('Types'),
          onPressed: isDisable
              ? null
              : () async {
                  final result = await showOptionsSheet<PokemonAttribute>(
                    context: context,
                    title: 'Types',
                    items: store.filters!.types
                        .map((e) => FieldOption(
                              label: e.value,
                              isSelected:
                                  store.selectedFilter.types.contains(e),
                              data: e,
                            ))
                        .toList(),
                  );
                  if (result != null && result.result != null) {
                    store.updateTypes(result.result!);
                  }
                },
        ),
        gap12,
        InputChip(
          showCheckmark: false,
          selected: store.hasFilterColor,
          avatar: const Icon(Icons.arrow_drop_down),
          label: const Text('Colors'),
          onPressed: isDisable
              ? null
              : () async {
                  final result = await showOptionsSheet<PokemonAttribute>(
                    context: context,
                    title: 'Colors',
                    items: store.filters!.colors
                        .map((e) => FieldOption(
                              label: e.value,
                              data: e,
                              isSelected:
                                  store.selectedFilter.colors.contains(e),
                            ))
                        .toList(),
                  );
                  if (result != null && result.result != null) {
                    store.updateColors(result.result!);
                  }
                },
        ),
        gap12,
        InputChip(
          showCheckmark: false,
          selected: store.hasFilterGeneration,
          avatar: const Icon(Icons.arrow_drop_down),
          label: const Text('Generations'),
          onPressed: isDisable
              ? null
              : () async {
                  final result = await showOptionsSheet<PokemonAttribute>(
                    context: context,
                    title: 'Generations',
                    items: store.filters!.generations
                        .map((e) => FieldOption(
                              label: e.value,
                              data: e,
                              isSelected:
                                  store.selectedFilter.generations.contains(e),
                            ))
                        .toList(),
                  );
                  if (result != null && result.result != null) {
                    store.updateGenerations(result.result!);
                  }
                },
        ),
      ],
    );
  }
}
