import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_option.freezed.dart';

@freezed
class FieldOption<T> with _$FieldOption<T> implements FormFieldOptions {
  const factory FieldOption({
    required String label,
    required T data,
    required bool isSelected,
  }) = _FieldOption<T>;
}

abstract class FormFieldOptions {
  const FormFieldOptions._();
  String get label;
}
