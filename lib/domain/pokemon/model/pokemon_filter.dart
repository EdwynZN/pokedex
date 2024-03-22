import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_filter.freezed.dart';
part 'pokemon_filter.g.dart';

@freezed
class PokemonFilter with _$PokemonFilter {
  const factory PokemonFilter({
    @Default({}) final Set<PokemonAttribute> types,
    @Default({}) final Set<PokemonAttribute> colors,
    @Default({}) final Set<PokemonAttribute> generations,
  }) = _PokemonFilter;
	
  factory PokemonFilter.fromJson(Map<String, dynamic> json) =>
			_$PokemonFilterFromJson(json);
}

@Freezed()
class PokemonAttribute with _$PokemonAttribute {
  const factory PokemonAttribute({
    required final int id,
    required final String value,
  }) = _PokemonAttribute;

  factory PokemonAttribute.fromJson(Map<String, dynamic> json) =>
      _$PokemonAttributeFromJson(json);
}