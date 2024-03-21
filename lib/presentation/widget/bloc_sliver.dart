import 'package:flutter/material.dart';
import 'package:poke_app/presentation/widget/sliver_divider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class BlockSliver extends StatelessWidget {
  final Widget sliver;
  final String title;

  const BlockSliver({
    // ignore: unused_element
    super.key,
    required this.title,
    required this.sliver,
  });

  @override
  Widget build(BuildContext context) {
    final onBackground = Theme.of(context).colorScheme.onSurfaceVariant;
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              height: 1.3,
              letterSpacing: 0.25,
              color: onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SliverDivider(height: 16.0, thickness: 0.5, color: onBackground),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          sliver: sliver,
        ),
      ],
    );
  }
}
