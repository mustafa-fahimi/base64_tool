import 'package:base64_tool/src/features/shared/failures/database_failure.dart';
import 'package:base64_tool/src/features/shared/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_failure.freezed.dart';

@freezed
class HomeFailure extends Failure with _$HomeFailure {
  const factory HomeFailure.parse(String error) = _Parse;
  const factory HomeFailure.database(DatabaseFailure failure) = _Database;
}
