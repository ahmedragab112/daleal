import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_handler.freezed.dart';
@Freezed()
abstract class ServerResponse<T> with _$ServerResponse<T> {
  const factory ServerResponse.data(T data) = Success<T>;
  const factory ServerResponse.error({required String error}) =
      Fail<T>;
}
