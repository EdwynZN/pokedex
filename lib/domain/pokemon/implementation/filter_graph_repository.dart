import 'package:dartz/dartz.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/filter_repository.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/infrastructure/graph_api/poke_graph_api.dart';

final class FilterGraphRepository implements FilterRepository {
  final PokeGraphApi api;

  const FilterGraphRepository(this.api);

  @override
  Future<Either<DomainFailure, PokemonFilter>> getFilters() async {
    try {
      final response = await api.getPokemonFilters();
      return Right(response);
    } catch (e) {
      return Left(UnknownFailure(error: e));
    }
  }
}
