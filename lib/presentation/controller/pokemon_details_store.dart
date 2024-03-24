import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_app/domain/failure.dart';
import 'package:poke_app/domain/pokemon/model/pokemon.dart';
import 'package:poke_app/domain/pokemon/repository.dart';
import 'package:poke_app/utils/string_extensions.dart';

part 'pokemon_details_store.g.dart';

class PokemonDetailStore = _PokemonDetailStore with _$PokemonDetailStore;

abstract class _PokemonDetailStore with Store {
  final PokemonRepository repository;
  final int id;

  _PokemonDetailStore({required this.id, required this.repository}) {
    _future = ObservableFuture(repository.getDetail(id: id));
  }
  
  @observable
  late ObservableFuture<Either<DomainFailure, Pokemon>> _future;

  ObservableFuture<Pokemon>? _futureFavorite;

  @computed
  Object? get error =>
      _future.error ?? _future.value?.fold((l) => l, (r) => null);

  @computed
  Pokemon? get data => _future.value?.fold((l) => null, (r) => r);

  @computed
  String? get name =>
      _future.value?.fold((l) => null, (r) => r.name.toTitleCase());

  @computed
  bool get isLoading => _future.status == FutureStatus.pending;

  @computed
  bool get isFavLoading => _futureFavorite?.status == FutureStatus.pending;

  @computed
  Object? get favError => _futureFavorite?.error;

  @action
  void reload() {
    _future = ObservableFuture(repository.getDetail(id: id));
  }

  @action
  Future<void> changeFavorite(bool favorite) async {
    if (_future.status != FutureStatus.fulfilled ||
        (_futureFavorite != null &&
            _futureFavorite!.status != FutureStatus.fulfilled)) {
      return;
    }
    _futureFavorite = ObservableFuture(
      repository.changeFavorite(id: id, isFavorite: favorite)
        .then((value) => value.fold((l) => throw l, (r) => r)),
    );
    await asyncWhen((p0) => _futureFavorite!.status != FutureStatus.pending);
    final pokemon = _futureFavorite?.value;
    if (pokemon != null) {
      _future = ObservableFuture.value(Right(pokemon));
    }
  }
}
