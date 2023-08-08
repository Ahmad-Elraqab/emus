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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../presentation/home/home_page.dart' as _i6;
import '../../presentation/home/home_wrapper.dart' as _i4;
import '../../presentation/main/main_page.dart' as _i2;
import '../../presentation/main/main_page_wrapper.dart' as _i1;
import '../../presentation/package_details/package_details.dart' as _i3;
import '../../presentation/tour/tour_page.dart' as _i7;
import '../../presentation/tour/tour_wrapper.dart' as _i5;

class Router extends _i8.RootStackRouter {
  Router([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainPageRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainPageWrapper(),
      );
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    PackageDetailsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PackageDetails(),
      );
    },
    HomePageRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeWrapper(),
      );
    },
    TourPageRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.TourWrapper(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    TourRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.TourPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          MainPageRouter.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              MainRoute.name,
              path: '',
              parent: MainPageRouter.name,
              children: [
                _i8.RouteConfig(
                  HomePageRouter.name,
                  path: 'home',
                  parent: MainRoute.name,
                  children: [
                    _i8.RouteConfig(
                      HomeRoute.name,
                      path: '',
                      parent: HomePageRouter.name,
                    )
                  ],
                ),
                _i8.RouteConfig(
                  TourPageRouter.name,
                  path: 'tour',
                  parent: MainRoute.name,
                  children: [
                    _i8.RouteConfig(
                      TourRoute.name,
                      path: '',
                      parent: TourPageRouter.name,
                    )
                  ],
                ),
              ],
            ),
            _i8.RouteConfig(
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
class MainPageRouter extends _i8.PageRouteInfo<void> {
  const MainPageRouter({List<_i8.PageRouteInfo>? children})
      : super(
          MainPageRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainPageRouter';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.PackageDetails]
class PackageDetailsRouter extends _i8.PageRouteInfo<void> {
  const PackageDetailsRouter()
      : super(
          PackageDetailsRouter.name,
          path: 'package_details',
        );

  static const String name = 'PackageDetailsRouter';
}

/// generated route for
/// [_i4.HomeWrapper]
class HomePageRouter extends _i8.PageRouteInfo<void> {
  const HomePageRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomePageRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomePageRouter';
}

/// generated route for
/// [_i5.TourWrapper]
class TourPageRouter extends _i8.PageRouteInfo<void> {
  const TourPageRouter({List<_i8.PageRouteInfo>? children})
      : super(
          TourPageRouter.name,
          path: 'tour',
          initialChildren: children,
        );

  static const String name = 'TourPageRouter';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.TourPage]
class TourRoute extends _i8.PageRouteInfo<void> {
  const TourRoute()
      : super(
          TourRoute.name,
          path: '',
        );

  static const String name = 'TourRoute';
}
