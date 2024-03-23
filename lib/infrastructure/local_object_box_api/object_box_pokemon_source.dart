import 'package:poke_app/infrastructure/local_object_box_api/model/ob_local_pokemon.dart';
import 'package:poke_app/objectbox.g.dart' as ob;
import 'package:poke_app/objectbox.g.dart';

class PokemonOBSource {
  late final Box<ObLocalPokemon> _box;

  PokemonOBSource({
    required ob.Store store,
  }) : _box = store.box<ObLocalPokemon>();

  Future<List<ObLocalPokemon>> getFavorites() async {
    final query = _box
        .query(ObLocalPokemon_.isFavorite.equals(true))
        .order(ObLocalPokemon_.id)
        .build();

    return query.find();
  }

  Future<ObLocalPokemon> update({
    required ObLocalPokemon pokemon,
    required bool isFavorite,
  }) async {
    final newPokemon = pokemon.copyWith(isFavorite: isFavorite);
    if (pokemon == newPokemon) {
      return newPokemon;
    }
    _box.put(newPokemon);
    return newPokemon;
  }

  Future<int> add(ObLocalPokemon pokemon) async {
    return _box.put(pokemon);
  }

  Future<List<int>> addMany(List<ObLocalPokemon> pokemon) async {
    return _box.putManyAsync(pokemon);
  }

  Future<void> delete(int id) async {
    _box.remove(id);
  }

  Future<void> deleteMany(List<int> ids) async {
    _box.removeManyAsync(ids);
  }
}
