import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/presentation/home/di/home_dependencies.dart';
import 'package:template/presentation/home/home_page.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      builder: (context, child) => const HomePage(),
      providers: HomeDependencies.of(context).providers,
    );
  }
}
