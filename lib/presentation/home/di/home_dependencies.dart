import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:template/presentation/home/providers/home_provider.dart';

class HomeDependencies {
  HomeDependencies._(BuildContext context);

  static HomeDependencies? _instance;

  factory HomeDependencies.of(context) =>
      _instance ?? HomeDependencies._(context);

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

  List<ChangeNotifierProvider> get _providers => [
        ChangeNotifierProvider<HomeProvider>(
          create: (context) => HomeProvider(),
        ),
      ];
  List<Provider> get _analytics => [];
  List<Provider> get _httpClients => [];
  List<Provider> get _dataStorages => [];
  List<Provider> get _dataSources => [];
  List<Provider> get _repositories => [];
  List<Provider> get _useCases => [];
  List<Provider> get _interceptors => [];
}
