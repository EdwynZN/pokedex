import 'package:poke_app/infrastructure/local_object_box_api/model/ob_local_pokemon.dart';
import 'package:poke_app/objectbox.g.dart' as ob;

class PokemonOBSource {
  late final ob.Box<ObLocalPokemon> _box;

  PokemonOBSource({
    required ob.Store store,
  }) : _box = store.box<ObLocalPokemon>();

  Future<List<ObLocalPokemon>> getFavorites() async {
    final query = _box
        .query(ob.ObLocalPokemon_.isFavorite.equals(true))
        .order(ob.ObLocalPokemon_.id)
        .build();

    return query.find();
  }

  Future<List<ObLocalPokemon>> getAllByID(List<int> ids) async {
    final ob.Condition<ObLocalPokemon> condition;
    switch (ids.length) {
      case 0:
        return [];
      case 1:
        condition = ob.ObLocalPokemon_.id.equals(ids.first);
        break;
      default:
        ids.sort();
        final int min = ids.first;
        final int max = ids.last;
        condition = ob.ObLocalPokemon_.id.between(min, max);
        break;
    }
    final query = _box
        .query(condition)
        .order(ob.ObLocalPokemon_.id)
        .build();

    final pokemons = query.find();
    return pokemons..retainWhere((element) => ids.contains(element.id));
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
