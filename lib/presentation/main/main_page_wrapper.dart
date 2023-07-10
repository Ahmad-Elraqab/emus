import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:template/presentation/main/di/main_dependencies.dart';

class MainPageWrapper extends StatefulWidget {
  const MainPageWrapper({super.key});

  @override
  State<MainPageWrapper> createState() => _MainPageWrapperState();
}

class _MainPageWrapperState extends State<MainPageWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      builder: (context, child) => const AutoRouter(),
      providers: MainDependencies.of(context).providers,
    );
  }
}
