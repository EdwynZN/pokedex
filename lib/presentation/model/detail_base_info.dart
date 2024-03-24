import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_base_info.freezed.dart';

@freezed
class DetailBaseInfo with _$DetailBaseInfo {
  const factory DetailBaseInfo({
    required final int pokemonHeight,
    required final int pokemonWeight,
    required final int xp,
  }) = _DetailBaseInfo;
	
}
