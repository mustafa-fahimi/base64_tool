import 'package:auto_route/auto_route.dart';
import 'package:base64_tool/src/features/home/home_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/'),
      ];
}
