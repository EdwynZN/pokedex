import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FavoriteButton extends HookWidget {
  final VoidCallback? onPressed;
  final bool isFavorite;
  final bool isLoading;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    required this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      initialValue: 1.0,
      duration: const Duration(milliseconds: 700),
    );
    useValueChanged<bool, void>(
      isLoading,
      (_, __) => isLoading
        ? animationController.repeat(reverse: true)
        : animationController.forward(),
    );
    return FadeTransition(
      opacity: animationController,
      child: IconButton.filledTonal(
        tooltip: isFavorite ? 'Favorite' : 'not favorite',
        onPressed: isLoading ? null : onPressed,
        icon: isFavorite
            ? const Icon(Icons.star)
            : const Icon(Icons.star_border_outlined),
      ),
    );
  }
}
