import 'package:flutter/material.dart';
import 'package:template/presentation/home/home_wrapper.dart';
import 'package:template/presentation/widgets/custom_app_bar.dart';
import 'package:template/presentation/widgets/custom_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  String selected = 'home';
  onChange(e) {
    setState(() {
      selected = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: const HomeWrapper(),
      bottomNavigationBar:
          CustomNavigationBar(onChange: onChange, selected: selected),
    );
  }
}
