// For every changes made in router, run the below command:
// `flutter pub run build_runner build --delete-conflicting-outputs`

import 'package:auto_route/auto_route.dart';
import 'package:template/presentation/agent/agent_page.dart';
import 'package:template/presentation/agent/agent_wrapper.dart.dart';
import 'package:template/presentation/home/home_page.dart';
import 'package:template/presentation/home/home_wrapper.dart';
import 'package:template/presentation/main/main_page.dart';
import 'package:template/presentation/main/main_page_wrapper.dart';
import 'package:template/presentation/package_details/package_details.dart';
import 'package:template/presentation/tour/tour_page.dart';
import 'package:template/presentation/tour/tour_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      page: MainPageWrapper,
      name: 'MainPageRouter',
      initial: true,
      path: '/',
      children: [
        AutoRoute(
          initial: true,
          page: MainPage,
          path: '',
          children: [
            AutoRoute(
              page: HomeWrapper,
              name: 'HomePageRouter',
              path: 'home',
              children: [
                AutoRoute(path: '', page: HomePage),
              ],
            ),
            AutoRoute(
              page: TourWrapper,
              name: 'TourPageRouter',
              path: 'tour',
              children: [
                AutoRoute(path: '', page: TourPage),
              ],
            ),
            AutoRoute(
              page: AgentWrapper,
              name: 'AgentPageRouter',
              path: 'agent',
              children: [
                AutoRoute(path: '', page: AgentPage),
              ],
            ),
          ],
        ),
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
