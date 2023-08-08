import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class TourWrapper extends StatefulWidget {
  const TourWrapper({super.key});

  @override
  State<TourWrapper> createState() => _TourWrapperState();
}

class _TourWrapperState extends State<TourWrapper> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
    // return MultiProvider(
    //   providers: [],
    //   builder: (context, child) => const AutoRouter(),
    // );
  }
}
