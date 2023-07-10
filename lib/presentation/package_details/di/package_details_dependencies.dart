import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class PackageDetailsDependencies {
  PackageDetailsDependencies._(BuildContext context);

  static PackageDetailsDependencies? _instance;

  factory PackageDetailsDependencies.of(context) =>
      _instance ?? PackageDetailsDependencies._(context);

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
