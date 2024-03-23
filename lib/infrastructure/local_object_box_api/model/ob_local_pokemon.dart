import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';

part 'ob_local_pokemon.freezed.dart';

@freezed
class ObLocalPokemon with _$ObLocalPokemon {
  @Entity(realClass: ObLocalPokemon)
  const factory ObLocalPokemon({
    @Id(assignable: true) required int id,
    required String name,
    required bool isFavorite,
    required String image,
  }) = _ObLocalPokemon;

  factory ObLocalPokemon.fromDomain(PokemonShallow pokemon, {
    required bool isFavorite,
  }) {
    return ObLocalPokemon(
      id: pokemon.id,
      name: pokemon.name,
      isFavorite: isFavorite,
      image: pokemon.image,
    );
  }
}
