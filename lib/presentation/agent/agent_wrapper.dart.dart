import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AgentWrapper extends StatefulWidget {
  const AgentWrapper({super.key});

  @override
  State<AgentWrapper> createState() => _AgentWrapperState();
}

class _AgentWrapperState extends State<AgentWrapper> {
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
