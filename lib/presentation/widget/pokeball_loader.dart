import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:poke_app/assets/pokemon_animations.dart';

class PokeballLoader extends StatelessWidget {
  final double size;

  const PokeballLoader({
    super.key,
    this.size = 72.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Lottie.asset(
        PokemonAnimations.pokeball,
        repeat: true,
        alignment: Alignment.center,
        animate: true,
        height: size,
        width: size,
        addRepaintBoundary: true,
        fit: BoxFit.contain,
        options: LottieOptions(
          enableMergePaths: false,
          enableApplyingOpacityToLayers: false,
        ),
      ),
    );
  }
}
