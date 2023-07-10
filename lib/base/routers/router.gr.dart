// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../presentation/main/main_page.dart' as _i2;
import '../../presentation/main/main_page_wrapper.dart' as _i1;
import '../../presentation/package_details/package_details.dart' as _i3;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainPageRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPageWrapper(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    PackageDetailsRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PackageDetails(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          MainPageRouter.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              '#redirect',
              path: '',
              parent: MainPageRouter.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i4.RouteConfig(
              MainRoute.name,
              path: 'home',
              parent: MainPageRouter.name,
            ),
            _i4.RouteConfig(
              PackageDetailsRouter.name,
              path: 'package_details',
              parent: MainPageRouter.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainPageWrapper]
class MainPageRouter extends _i4.PageRouteInfo<void> {
  const MainPageRouter({List<_i4.PageRouteInfo>? children})
      : super(
          MainPageRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainPageRouter';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: 'home',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.PackageDetails]
class PackageDetailsRouter extends _i4.PageRouteInfo<void> {
  const PackageDetailsRouter()
      : super(
          PackageDetailsRouter.name,
          path: 'package_details',
        );

  static const String name = 'PackageDetailsRouter';
}
