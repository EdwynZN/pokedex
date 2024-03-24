// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonDetailStore on _PokemonDetailStore, Store {
  Computed<Object?>? _$errorComputed;

  @override
  Object? get error => (_$errorComputed ??= Computed<Object?>(() => super.error,
          name: '_PokemonDetailStore.error'))
      .value;
  Computed<Pokemon?>? _$dataComputed;

  @override
  Pokemon? get data => (_$dataComputed ??= Computed<Pokemon?>(() => super.data,
          name: '_PokemonDetailStore.data'))
      .value;
  Computed<String?>? _$nameComputed;

  @override
  String? get name => (_$nameComputed ??=
          Computed<String?>(() => super.name, name: '_PokemonDetailStore.name'))
      .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_PokemonDetailStore.isLoading'))
          .value;
  Computed<bool>? _$isFavLoadingComputed;

  @override
  bool get isFavLoading =>
      (_$isFavLoadingComputed ??= Computed<bool>(() => super.isFavLoading,
              name: '_PokemonDetailStore.isFavLoading'))
          .value;
  Computed<Object?>? _$favErrorComputed;

  @override
  Object? get favError =>
      (_$favErrorComputed ??= Computed<Object?>(() => super.favError,
              name: '_PokemonDetailStore.favError'))
          .value;

  late final _$_futureAtom =
      Atom(name: '_PokemonDetailStore._future', context: context);

  @override
  ObservableFuture<Either<DomainFailure, Pokemon>> get _future {
    _$_futureAtom.reportRead();
    return super._future;
  }

  bool __futureIsInitialized = false;

  @override
  set _future(ObservableFuture<Either<DomainFailure, Pokemon>> value) {
    _$_futureAtom
        .reportWrite(value, __futureIsInitialized ? super._future : null, () {
      super._future = value;
      __futureIsInitialized = true;
    });
  }

  late final _$changeFavoriteAsyncAction =
      AsyncAction('_PokemonDetailStore.changeFavorite', context: context);

  @override
  Future<void> changeFavorite(bool favorite) {
    return _$changeFavoriteAsyncAction
        .run(() => super.changeFavorite(favorite));
  }

  late final _$_PokemonDetailStoreActionController =
      ActionController(name: '_PokemonDetailStore', context: context);

  @override
  void reload() {
    final _$actionInfo = _$_PokemonDetailStoreActionController.startAction(
        name: '_PokemonDetailStore.reload');
    try {
      return super.reload();
    } finally {
      _$_PokemonDetailStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
data: ${data},
name: ${name},
isLoading: ${isLoading},
isFavLoading: ${isFavLoading},
favError: ${favError}
    ''';
  }
}
