/* 
interface class Pagination<T> {
  int get limit;
  int get offset;
  PagingStatus get status;
  List<T> get list;

  Future<void> refresh([int? limit]);

  Future<void> getPage();

  @protected
  Future<List<T>> fetchPage();

  final _pageSize = 60;
  final PokemonRepository _repository;

  Pagination(this._repository) : super(const AsyncValue.loading()) {
    _fetch();
  }

  bool _lastPage = false;

  bool get isLoading => state.isLoading;

  Future<void> retrieveNextPage() async {
    if (state.isLoading || isLastPage) {
      return;
    }
    state = const AsyncValue<List<PokemonShallow>>.loading().copyWithPrevious(
      state,
      isRefresh: false,
    );
    await _fetch();
  }

  Future<List<PokemonShallow>> __fetchPage(int? offset) async {
    final fetch = await _repository.getPage(
      offset: offset ?? 0,
      limit: _pageSize,
    );
    return fetch.fold((l) => throw l, (r) => r);
  }

  Future<void> _fetch() async {
    final fetch = await AsyncValue.guard(
      () => __fetchPage(state.valueOrNull?.length ?? 0),
    );
    if (mounted) {
      state = fetch.whenData(
        (deals) {
          final previous = state.valueOrNull;
          return previous == null ? deals : [...previous, ...deals];
        },
      ).copyWithPrevious(state, isRefresh: false);
    }
  }

  Future<void> refresh() async {
    if (state.isLoading) return;
    state = const AsyncValue<List<PokemonShallow>>.loading().copyWithPrevious(
      state,
      isRefresh: true,
    );
    final fetch =
        await AsyncValue.guard<List<PokemonShallow>>(() => __fetchPage(0));
    if (mounted) {
      state = fetch.maybeMap(
        data: (d) {
          _lastPage = false;
          return d;
        },
        orElse: () => fetch.copyWithPrevious(state),
      );
    }
  }

  bool get isLastPage {
    if (_lastPage) {
      return _lastPage;
    } else if (state is AsyncData &&
        (state.asData?.value.length ?? _pageSize) < _pageSize) {
      _lastPage = true;
    }
    return _lastPage;
  }
}
 */