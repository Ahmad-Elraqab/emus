// For every changes made in router, run the below command:
// `flutter pub run build_runner build --delete-conflicting-outputs`

import 'package:auto_route/auto_route.dart';
import 'package:template/presentation/main/main_page.dart';
import 'package:template/presentation/main/main_page_wrapper.dart';
import 'package:template/presentation/package_details/package_details.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      page: MainPageWrapper,
      name: 'MainPageRouter',
      initial: true,
      path: '/',
      children: [
        MaterialRoute(initial: true, page: MainPage, path: 'home'),
        // MaterialRoute(page: MainPage, path: '/tour'),
        // MaterialRoute(page: MainPage, path: '/near_me'),
        // MaterialRoute(page: MainPage, path: '/boarding'),
        MaterialRoute(
            name: 'PackageDetailsRouter',
            page: PackageDetails,
            path: 'package_details'),
      ],
    ),
  ],
)
class $Router {}
