import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ErrorHeader extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ErrorHeader({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      key: const ValueKey<String>('ErrorButton'),
      elevation: 0.0,
      margin: EdgeInsets.zero,
      color: theme.colorScheme.error,
      shape: const BeveledRectangleBorder(),
      child: TextButton.icon(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            const Size.fromHeight(36.0),
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
          foregroundColor: MaterialStateProperty.all(
            theme.colorScheme.onError,
          ),
        ),
        label: Text(title),
        icon: const Icon(Icons.refresh_outlined),
        onPressed: onPressed,
      ),
    );
  }
}

class SliverErrorHeader extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SliverErrorHeader(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPinnedHeader(
      key: const ValueKey<String>('ErrorButton'),
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.zero,
        color: theme.colorScheme.error,
        shape: const BeveledRectangleBorder(),
        child: Center(
          child: TextButton.icon(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                const Size.fromHeight(36.0),
              ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: const MaterialStatePropertyAll(RoundedRectangleBorder()),
              foregroundColor: MaterialStateProperty.all(
                theme.colorScheme.onError,
              ),
            ),
            label: Text(title),
            icon: const Icon(Icons.refresh_outlined),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
