import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/base/routers/router.gr.dart';
import 'package:template/presentation/widgets/custom_app_bar.dart';
import 'package:template/presentation/widgets/custom_navigation_bar.dart';
import 'package:template/presentation/widgets/search_box.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  bool isOpen = false;
  void onClick() => setState(() {
        isOpen = true;
      });
  void onCloseClick() => setState(() {
        isOpen = false;
      });
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

        return Scaffold(
          appBar: CustomAppBar(
            onClick: onClick,
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  child,
                  if (isOpen) SearchBox(onClick: onCloseClick),
                ],
              ),
            ),
          ),
          bottomNavigationBar: CustomNavigationBar(tabsRouter: tabsRouter!),
        );
      },
    );
  }
}
