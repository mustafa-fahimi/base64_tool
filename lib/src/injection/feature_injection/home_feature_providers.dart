import 'package:base64_tool/src/features/home/data/data_source/home_local_data_source.dart';
import 'package:base64_tool/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:base64_tool/src/features/home/domain/repositories/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_feature_providers.g.dart';

@riverpod
HomeLocalDataSource homeLocalDataSource(HomeLocalDataSourceRef ref) {
  return HomeLocalDataSourceImpl(ref);
}

@riverpod
HomeRepository homeRepository(HomeRepositoryRef ref) {
  return HomeRepositoryImpl(ref);
}
