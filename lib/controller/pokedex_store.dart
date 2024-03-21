import 'package:mobx/mobx.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/domain/pokemon/repository.dart';

part 'pokedex_store.g.dart';

class PokedexStore = _PokedexStore with _$PokedexStore;

abstract class _PokedexStore with Store {
  final int _pageSize = 60;
  final PokemonRepository _repository;
  late ReactionDisposer _disposer;

  _PokedexStore(this._repository) {
    _disposer = when(
      (_) => !_isLoading && !hasError && pokemons.length < _pageSize,
      () {
        runInAction(() => _lastPage = true);
      },
    );
    _fetch();
  }

  final ObservableList<PokemonShallow> _pokemons = ObservableList<PokemonShallow>();

  @readonly
  bool _isLoading = true;

  @readonly
  bool _lastPage = false;

  @readonly
  Object? _error;

  @computed
  bool get hasError => _error != null;

  @computed
  bool get hasValue => _pokemons.isNotEmpty;

  @computed
  List<PokemonShallow> get pokemons => _pokemons;

  @action
  Future<void> retrieveNextPage() async {
    if (_isLoading || _lastPage) {
      return;
    }
    _isLoading = true;
    await _fetch();
  }

  Future<List<PokemonShallow>> __fetchPage(int? offset) async {
    final fetch = await _repository.getPage(
      offset: offset ?? 0,
      limit: _pageSize,
    );
    return fetch.fold((l) => throw l, (r) => r);
  }

  @action
  Future<void> _fetch() async {
    try {
      final result = await __fetchPage(pokemons.length);
      pokemons.addAll(result);
    } catch (e) {
      _error = e;
    } finally {
      _isLoading = false;
    }
  }

  @action
  Future<void> refresh() async {
    if (_isLoading) return;
    _isLoading = true;
    try {
      final result = await __fetchPage(0);
      pokemons
        ..clear()
        ..addAll(result);
      _lastPage = false;
      _disposer();
      _disposer = when(
        (_) => !_isLoading && !hasError && pokemons.length < _pageSize,
        () {
          runInAction(() => _lastPage = true);
        },
      );
    } catch (e) {
      _error = e;
    } finally {
      _isLoading = false;
    }
  }

  void dispose() {
    _disposer();
  }
}
