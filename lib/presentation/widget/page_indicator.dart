import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageIndicator extends HookWidget {
  final int count;
  final PageController controller;

  const PageIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final selected = useListenableSelector(
      controller,
      () => controller.page?.round() ?? 0,
    );
    final primary = Theme.of(context).colorScheme.primary;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        count,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            width: 8.0,
            height: 8.0,
            decoration: ShapeDecoration(
              color: primary.withOpacity(selected == index ? 1 : 0.24),
              shape: const CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
