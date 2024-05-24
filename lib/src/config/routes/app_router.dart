import 'package:auto_route/auto_route.dart';
import 'package:commax/src/features/add_device/presentation/add_device_page.dart';
import 'package:commax/src/features/advance_tools/presentation/advance_tools_page.dart';
import 'package:commax/src/features/android_app_settings/presentation/android_app_settings_page.dart';
import 'package:commax/src/features/charge_device/presentation/charge_device_page.dart';
import 'package:commax/src/features/contacts/presentation/contacts_page.dart';
import 'package:commax/src/features/customize_home/presentation/customize_home_page.dart';
import 'package:commax/src/features/device_settings/presentation/device_settings_page.dart';
import 'package:commax/src/features/guide/presentation/guide_page.dart';
import 'package:commax/src/features/home/presentation/home_page.dart';
import 'package:commax/src/features/splash/presentation/splash_page.dart';
import 'package:commax/src/features/zone/presentation/zones_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/'),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AddDeviceRoute.page),
        AutoRoute(page: ChargeDeviceRoute.page),
        AutoRoute(page: DeviceSettingsRoute.page),
        AutoRoute(page: ZonesRoute.page),
        AutoRoute(page: CustomizeHomeRoute.page),
        AutoRoute(page: GuideRoute.page),
        AutoRoute(page: AndroidAppSettingsRoute.page),
        AutoRoute(page: AdvanceToolsRoute.page),
        AutoRoute(page: ContactsRoute.page),
      ];
}
