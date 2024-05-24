// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddDeviceRoute.name: (routeData) {
      final args = routeData.argsAs<AddDeviceRouteArgs>(
          orElse: () => const AddDeviceRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddDevicePage(key: args.key),
      );
    },
    AdvanceToolsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdvanceToolsPage(),
      );
    },
    AndroidAppSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AndroidAppSettingsPage(),
      );
    },
    ChargeDeviceRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChargeDevicePage(),
      );
    },
    ContactsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsPage(),
      );
    },
    CustomizeHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomizeHomePage(),
      );
    },
    DeviceSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeviceSettingsPage(),
      );
    },
    GuideRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GuidePage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ZonesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ZonesPage(),
      );
    },
  };
}

/// generated route for
/// [AddDevicePage]
class AddDeviceRoute extends PageRouteInfo<AddDeviceRouteArgs> {
  AddDeviceRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AddDeviceRoute.name,
          args: AddDeviceRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddDeviceRoute';

  static const PageInfo<AddDeviceRouteArgs> page =
      PageInfo<AddDeviceRouteArgs>(name);
}

class AddDeviceRouteArgs {
  const AddDeviceRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddDeviceRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AdvanceToolsPage]
class AdvanceToolsRoute extends PageRouteInfo<void> {
  const AdvanceToolsRoute({List<PageRouteInfo>? children})
      : super(
          AdvanceToolsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdvanceToolsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AndroidAppSettingsPage]
class AndroidAppSettingsRoute extends PageRouteInfo<void> {
  const AndroidAppSettingsRoute({List<PageRouteInfo>? children})
      : super(
          AndroidAppSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AndroidAppSettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChargeDevicePage]
class ChargeDeviceRoute extends PageRouteInfo<void> {
  const ChargeDeviceRoute({List<PageRouteInfo>? children})
      : super(
          ChargeDeviceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChargeDeviceRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsPage]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CustomizeHomePage]
class CustomizeHomeRoute extends PageRouteInfo<void> {
  const CustomizeHomeRoute({List<PageRouteInfo>? children})
      : super(
          CustomizeHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomizeHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeviceSettingsPage]
class DeviceSettingsRoute extends PageRouteInfo<void> {
  const DeviceSettingsRoute({List<PageRouteInfo>? children})
      : super(
          DeviceSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeviceSettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GuidePage]
class GuideRoute extends PageRouteInfo<void> {
  const GuideRoute({List<PageRouteInfo>? children})
      : super(
          GuideRoute.name,
          initialChildren: children,
        );

  static const String name = 'GuideRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ZonesPage]
class ZonesRoute extends PageRouteInfo<void> {
  const ZonesRoute({List<PageRouteInfo>? children})
      : super(
          ZonesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ZonesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
