import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_shallow.freezed.dart';
part 'pokemon_shallow.g.dart';

@freezed
class PokemonShallow with _$PokemonShallow {
  const factory PokemonShallow({
    required final int id,
    required final String name,
    required final String image,
  }) = _PokemonShallow;
	
  factory PokemonShallow.fromJson(Map<String, dynamic> json) =>
			_$PokemonShallowFromJson(json);
}
