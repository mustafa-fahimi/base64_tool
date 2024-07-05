import 'package:base64_tool/src/features/home/domain/failures/home_failure.dart';
import 'package:base64_tool/src/features/home/domain/models/base64_model.dart';
import 'package:base64_tool/src/features/home/domain/repositories/home_repository.dart';
import 'package:base64_tool/src/injection/feature_injection/home_feature_providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeRepositoryImpl extends HomeRepository {
  const HomeRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Either<HomeFailure, void>> saveConvertedText(
    Base64Model param,
  ) async {
    return await ref
        .read(homeLocalDataSourceProvider)
        .saveConvertedText(param)
        .then(
      (response) {
        return response.fold(
          (l) {
            return left<HomeFailure, void>(HomeFailure.database(l));
          },
          (r) {
            return right(r);
          },
        );
      },
    );
  }
}
