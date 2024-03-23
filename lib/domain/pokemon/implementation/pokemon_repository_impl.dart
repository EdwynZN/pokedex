import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/infrastructure/poke_api/pokeapi.dart';

final class PokemonRemoteRepository implements PokemonRepository {
  final PokeApi api;

  const PokemonRemoteRepository(this.api);

  @override
  Future<Either<DomainFailure, Pokemon>> getDetail({required int id}) async {
    try {
      final response = await api.getPokemonDetail(id);
      return Right(response.toDomain());
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return Left(
          ItemFailure(message: 'Not Found', name: id.toString()),
        );
      }
      return Left(
        NetworkFailure.request(
          message: e.message ?? e.type.name,
          statusCode: e.response?.statusCode ?? 400,
        ),
      );
    } catch (e) {
      return Left(UnknownFailure(error: e));
    }
  }
  
  @override
  Future<Either<DomainFailure, List<PokemonShallow>>> getPage({
    int offset = 0,
    int limit = 60,
    PokemonFilter filter = const PokemonFilter(),
    String? query,
  })  async {
    try {
      final response = await api.getPokemons({
        'offset': offset,
        'limit': limit,
      });
      final List<PokemonShallow> pokemons = [];
      final RegExp regExp = RegExp(r'/\d*/$');
      for (final p in response.results) {
        final name = p.name;
        final match = regExp.stringMatch(p.url);
        int? id;
        if (match != null) {
          id = int.tryParse(match.substring(1, match.length - 1));
        }
        if (id == null) {
          return Left(ItemFailure(message: 'No ID', name: name));
        }
        pokemons.add(
          PokemonShallow(
            name: name,
            id: id,
            image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg'
            //image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png'
          ),
        );
      }
      return Right(pokemons);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return Left(
          ItemFailure(message: 'Not Found', name: offset.toString()),
        );
      }
      return Left(
        NetworkFailure.request(
          message: e.message ?? e.type.name,
          statusCode: e.response?.statusCode ?? 400,
        ),
      );
    } catch (e) {
      return Left(UnknownFailure(error: e));
    }
  }
}
