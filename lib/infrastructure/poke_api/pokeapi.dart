import 'package:poke_app/infrastructure/poke_api/poke_api_pokemon_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'pokeapi.g.dart';

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class PokeApi{
  factory PokeApi(Dio dio, {String baseUrl}) = _PokeApi;

  @GET('/pokemon')
  Future<PokeApiWrapperResponse> getPokemons([
    @Queries() Map<String, dynamic>? parameters,
    @CancelRequest() CancelToken? cancelToken
  ]);

  @GET('/pokemon/{id}')
  Future<PokeApiPokemonResponse> getPokemonDetail(
    @Path('id') int id,
    [@CancelRequest() CancelToken? cancelToken]
  );
}