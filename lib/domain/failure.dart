import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

sealed class DomainFailure {
  const DomainFailure();
}

@freezed
class ItemFailure extends DomainFailure with _$ItemFailure {
  const factory ItemFailure({
    required final String message,
    required final String name,
  }) = _ItemFailure;
}

@freezed
class UnknownFailure extends DomainFailure with _$UnknownFailure {
  const factory UnknownFailure({
    required Object error,
  }) = _UnknownFailure;
}

@freezed
class NetworkFailure extends DomainFailure with _$NetworkFailure {
  const factory NetworkFailure.request({
    required String message,
    required int statusCode,
  }) = NetworkRequestFailure;

  const factory NetworkFailure.server({
    required String message,
    required int statusCode,
  }) = ServerFailure;
}