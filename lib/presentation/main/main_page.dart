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
        AgentPageRouter(),
        TourPageRouter(),
      ],
      builder: (context, child, animation) {
        tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: CustomAppBar(
            onClick: onClick,
          ),
          drawer: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: const Color(0xFFFEEE9D),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height - 120,
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image.asset('assets/images/logo.png'),
                  SizedBox(height: 20),
                  Text(
                    'Contact US',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
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
