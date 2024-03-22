import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:poke_app/controller/filter_store.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/presentation/model/field_option.dart';
import 'package:poke_app/presentation/widget/sheet_options.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:provider/provider.dart';

class FilterBar extends HookWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    //final store = context.watch<FilterStore>();
    /* final Map<String, List<FieldOption<PokemonAttribute>>> filters =
        useMemoized(
      () {
        final filters = store.filters;
        if (filters == null) {
          return const {};
        }
        return {
          'Types': filters.types
            .map((e) => FieldOption(label: e.value, data: e, isSelected: ))
            .toList(),
          'Colors': filters.colors
            .map((e) => FieldOption(label: e.value, data: e))
            .toList(),
          'Generations': filters.generations
            .map((e) => FieldOption(label: e.value, data: e))
            .toList()
        };
      },
      [store.filters],
    ); */
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /* ...filters.entries.map(
              (e) => Observer(
                builder: (context) {
                  return InputChip(
                    showCheckmark: false,
                    selected: true,
                    avatar: const Icon(Icons.arrow_drop_down),
                    label: Text(e.key),
                    onPressed: () async {
                      final store = context.read<FilterStore>();
                      final result = await showOptionsSheet<PokemonAttribute>(
                        context: context,
                        title: 'Types',
                        items: e.value,
                      );
                      if (result != null && result.result != null) {
                        store.updateTypes({result.result!});
                      }
                    },
                  );
                }
              ),
            ), */

            Observer(
              builder: (context) {
                final store = context.watch<FilterStore>();
                return InputChip(
                  showCheckmark: false,
                  selected: store.hasFilterType,
                  avatar: const Icon(Icons.arrow_drop_down),
                  label: const Text('Types'),
                  onPressed: () async {
                    final result = await showOptionsSheet<PokemonAttribute>(
                      context: context,
                      title: 'Types',
                      items: store.filters!.types
                          .map((e) => FieldOption(
                            label: e.value,
                            isSelected: store.selectedFilter.types.contains(e),
                            data: e,
                          ))
                          .toList(),
                    );
                    if (result != null && result.result != null) {
                      store.updateTypes(result.result!);
                    }
                  },
                );
              }
            ),
            gap12,
            Observer(
              builder: (context) {
                final store = context.watch<FilterStore>();
                return InputChip(
                  showCheckmark: false,
                  selected: store.hasFilterColor,
                  avatar: const Icon(Icons.arrow_drop_down),
                  label: const Text('Colors'),
                  onPressed: () async {
                    final result = await showOptionsSheet<PokemonAttribute>(
                      context: context,
                      title: 'Colors',
                      items: store.filters!.colors
                          .map((e) => FieldOption(
                            label: e.value,
                            data: e,
                            isSelected: store.selectedFilter.colors.contains(e),
                          ))
                          .toList(),
                    );
                    if (result != null && result.result != null) {
                      store.updateColors(result.result!);
                    }
                  },
                );
              }
            ),
            gap12,
            Observer(
              builder: (context) {
                final store = context.watch<FilterStore>();
                return InputChip(
                  showCheckmark: false,
                  selected: store.hasFilterGeneration,
                  avatar: const Icon(Icons.arrow_drop_down),
                  label: const Text('Generations'),
                  onPressed: () async {
                    final result = await showOptionsSheet<PokemonAttribute>(
                      context: context,
                      title: 'Generations',
                      items: store.filters!.generations
                          .map((e) => FieldOption(
                            label: e.value,
                            data: e,
                            isSelected: store.selectedFilter.generations.contains(e),
                          ))
                          .toList(),
                    );
                    if (result != null && result.result != null) {
                      store.updateGenerations(result.result!);
                    }
                  },
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
