import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AgentDependencies {
  AgentDependencies._(BuildContext context);

  static AgentDependencies? _instance;

  factory AgentDependencies.of(context) =>
      _instance ?? AgentDependencies._(context);

  List<SingleChildWidget> get providers => [
        ..._analytics,
        ..._httpClients,
        ..._dataStorages,
        ..._dataSources,
        ..._repositories,
        ..._useCases,
        ..._providers,
        ..._interceptors,
      ];

  List<Provider> get _providers => [];
  List<Provider> get _analytics => [];
  List<Provider> get _httpClients => [];
  List<Provider> get _dataStorages => [];
  List<Provider> get _dataSources => [];
  List<Provider> get _repositories => [];
  List<Provider> get _useCases => [];
  List<Provider> get _interceptors => [];
}
