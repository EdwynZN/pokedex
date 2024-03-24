import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/presentation/widget/pokeball_loader.dart';
import 'package:poke_app/utils/constraints.dart';
import 'package:poke_app/utils/string_extensions.dart';

class EvolutionCard extends StatelessWidget {
  final PokemonEvolution pokemon;

  const EvolutionCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final card = Card.outlined(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
      child: InkWell(
        splashColor: colorScheme.primary.withOpacity(0.12),
        highlightColor: colorScheme.primary.withOpacity(0.08),
        splashFactory: InkSparkle.splashFactory,
        onTap: () => context.pushReplacementNamed(
          'pokemon_details',
          pathParameters: {'id': pokemon.id.toString()},
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 72.0,
                  width: 72.0,
                  alignment: Alignment.center,
                  child: SvgPicture.network(
                    key: ValueKey(pokemon.id),
                    pokemon.image,
                    semanticsLabel: pokemon.name,
                    height: 72.0,
                    width: 72.0,
                    allowDrawingOutsideViewBox: false,
                    fit: BoxFit.contain,
                    placeholderBuilder: (_) => const PokeballLoader(size: 32.0),
                  ),
                ),
              ),
              gap4,
              Text(
                pokemon.name.toTitleCase(),
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
    if (!pokemon.isFavorite) {
      return card;
    }

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Card.outlined(
          margin: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            side: BorderSide(color: colorScheme.outlineVariant),
          ),
          child: InkWell(
            splashColor: colorScheme.primary.withOpacity(0.12),
            highlightColor: colorScheme.primary.withOpacity(0.08),
            splashFactory: InkSparkle.splashFactory,
            onTap: () => context.goNamed(
              'pokemon_details',
              pathParameters: {'id': pokemon.id.toString()},
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 72.0,
                      width: 72.0,
                      alignment: Alignment.center,
                      child: SvgPicture.network(
                        key: ValueKey(pokemon.id),
                        pokemon.image,
                        semanticsLabel: pokemon.name,
                        height: 72.0,
                        width: 72.0,
                        allowDrawingOutsideViewBox: false,
                        fit: BoxFit.contain,
                        placeholderBuilder: (_) =>
                            const PokeballLoader(size: 32.0),
                      ),
                    ),
                  ),
                  gap4,
                  Text(
                    pokemon.name.toTitleCase(),
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          right: 0.0,
          top: 0.0,
          child: Icon(Icons.star),
        ),
      ],
    );
  }
}
