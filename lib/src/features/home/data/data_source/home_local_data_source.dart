import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract interface class HomeLocalDataSource {
  const HomeLocalDataSource();

// Future<Either<DatabaseFailure, Map<String, dynamic>>> readCards();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  const HomeLocalDataSourceImpl(this.ref);

  final Ref ref;
}
