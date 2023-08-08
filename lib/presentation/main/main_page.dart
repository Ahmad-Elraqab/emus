import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/base/routers/router.gr.dart';
import 'package:template/presentation/widgets/custom_app_bar.dart';
import 'package:template/presentation/widgets/custom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  void initState() {
    // tabsRouter!.setActiveIndex(0);

    super.initState();
  }

  TabsRouter? tabsRouter;
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomePageRouter(),
        TourPageRouter(),
        TourPageRouter(),
        TourPageRouter(),
      ],
      builder: (context, child, animation) {
        tabsRouter = AutoTabsRouter.of(context);
        // tabsRouter!.setActiveIndex(0);

        return Scaffold(
          appBar: const CustomAppBar(),
          body: child,
          bottomNavigationBar: CustomNavigationBar(tabsRouter: tabsRouter!),
        );
      },
    );
  }
}
