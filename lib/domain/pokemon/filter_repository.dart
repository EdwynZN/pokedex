import 'package:dartz/dartz.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';

abstract interface class FilterRepository {
  Future<Either<DomainFailure, PokemonFilter>> getFilters();
}
