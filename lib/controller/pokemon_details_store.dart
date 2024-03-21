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

  late ObservableFuture<Either<DomainFailure, Pokemon>> _future;

  @computed
  Object? get error =>
      _future.error ?? _future.value?.fold((l) => l, (r) => null);

  @computed
  Pokemon? get data => _future.value?.fold((l) => null, (r) => r);

  @computed
  String? get name => _future.value?.fold((l) => null, (r) => r.name.toTitleCase());

  @computed
  bool get isLoading => _future.status == FutureStatus.pending;

  @action
  void reload() {
    _future = ObservableFuture(repository.getDetail(id: id));
  }
}
