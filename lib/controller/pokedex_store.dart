import 'package:mobx/mobx.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_filter.dart';
import 'package:poke_app/domain/pokemon/model/pokemon_shallow.dart';
import 'package:poke_app/domain/pokemon/repository.dart';

part 'pokedex_store.g.dart';

class PokedexStore = _PokedexStore with _$PokedexStore;

abstract class _PokedexStore with Store {
  final int _pageSize = 60;
  final PokemonRepository _repository;
  late ReactionDisposer _disposer;

  _PokedexStore(this._repository) : _filter = const PokemonFilter() {
    _disposer = when(
      (_) => !_isLoading && !hasError && pokemons.length < _pageSize,
      () {
        runInAction(() => _lastPage = true);
      },
    );
    _fetch();
  }

  PokemonFilter _filter;

  final ObservableList<PokemonShallow> _pokemons =
      ObservableList<PokemonShallow>();

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
    _error = null;
    await _fetch();
  }

  Future<List<PokemonShallow>> __fetchPage(int offset) async {
    final fetch = await _repository.getPage(
      offset: offset,
      limit: _pageSize,
      filter: _filter,
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

  Future<void> refresh() async {
    if (_isLoading) return;
    _refresh();
  }

  Future<void> changeFilter(PokemonFilter filter) async {
    _filter = filter;
    _refresh();
  }

  @action
  Future<void> _refresh() async {
    _isLoading = true;
    _error = null;
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
