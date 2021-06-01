import 'package:flutter_retrofit_sample/domain/response/api_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(ApiError error) = Failure<T>;
}
