import 'package:base64_tool/src/features/home/domain/models/base64_model.dart';
import 'package:base64_tool/src/features/shared/failures/database_failure.dart';
import 'package:base64_tool/src/injection/global_providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract interface class HomeLocalDataSource {
  const HomeLocalDataSource();

  Future<Either<DatabaseFailure, void>> saveConvertedText(
    Base64Model param,
  );
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  const HomeLocalDataSourceImpl(this.ref);

  final Ref ref;

  @override
  Future<Either<DatabaseFailure, void>> saveConvertedText(
    Base64Model param,
  ) async {
    try {
      final objectBox = await ref.read(objectBoxHelperProvider.future);
      objectBox.store.box<Base64Model>().put(param);
      return right(null);
    } catch (e) {
      return left(DatabaseFailure.unknown(e));
    }
  }
}
