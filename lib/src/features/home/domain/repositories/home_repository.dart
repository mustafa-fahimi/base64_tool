import 'package:base64_tool/src/features/home/domain/failures/home_failure.dart';
import 'package:base64_tool/src/features/home/domain/models/base64_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class HomeRepository {
  const HomeRepository();

  Future<Either<HomeFailure, void>> saveConvertedText(
    Base64Model param,
  );
}
