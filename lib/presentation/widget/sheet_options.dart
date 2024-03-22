import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:poke_app/presentation/model/field_option.dart';
import 'package:poke_app/presentation/model/result.dart';
import 'package:poke_app/utils/string_extensions.dart';

Future<Result<Set<E>>?> showOptionsSheet<E>({
  required BuildContext context,
  required List<FieldOption<E>> items,
  required String title,
  DraggableScrollableController? controller,
}) {
  return showModalBottomSheet<Result<Set<E>>>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    elevation: 4.0,
    enableDrag: true,
    showDragHandle: true,
    builder: (context) {
      final Size size = MediaQuery.sizeOf(context);
      final double height = (600.0 / size.height).clamp(0.25, 0.5);
      return DraggableScrollableSheet(
        controller: controller,
        maxChildSize: height,
        expand: false,
        initialChildSize: height,
        shouldCloseOnMinExtent: true,
        minChildSize: 0.15,
        builder: (context, scrollController) => FilteredOptions<E>(
          scrollController: scrollController,
          title: title,
          options: items,
          noSelected: '',
        ),
      );
    },
  );
}

class FilteredOptions<E> extends HookWidget {
  final ScrollController? scrollController;
  final String title;
  final List<FieldOption<E>> options;
  final String noSelected;

  const FilteredOptions({
    super.key,
    this.scrollController,
    required this.title,
    required this.options,
    required this.noSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final ValueNotifier<List<FieldOption<E>>> state = useState([...options]);
    final tileColor = ElevationOverlay.applySurfaceTint(
      theme.colorScheme.surfaceVariant,
      theme.colorScheme.primary,
      8.0,
    );
    return SafeArea(
      child: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: theme.bottomSheetTheme.backgroundColor,
            elevation: 12,
            forceElevated: true,
            pinned: true,
            centerTitle: false,
            actions: [
              TextButton(
                child: const Text('Save'),
                onPressed: () {
                  Navigator.pop(
                    context,
                    Result(
                      result: state.value
                      .where((element) => element.isSelected)
                      .map((e) => e.data)
                      .toSet(),
                    ),
                  );
                },
              ),
              TextButton(
                child: const Text('Clear'),
                onPressed: () {
                  Navigator.pop(context, Result<Set<E>>(result: const {}));
                },
              ),
            ],
            title: Text(
              title,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final filter = state.value[index];
                final isSelected = filter.isSelected;
                return ListTile(
                  selectedTileColor: tileColor,
                  selected: isSelected,
                  title: Text(
                    filter.label.toTitleCase(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    final newList = [...state.value];
                    newList[index] = filter.copyWith(isSelected: !isSelected);
                    state.value = newList;
                  },
                );
              },
              childCount: state.value.length,
            ),
          ),
        ],
      ),
    );
  }
}
