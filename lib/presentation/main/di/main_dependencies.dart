import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:template/data/repositories_impl/main_repository_impl.dart';
import 'package:template/domain/repositories/main_repository.dart';
import 'package:template/domain/usecases/main_usecases.dart';
import 'package:template/presentation/main/providers/main_provider.dart';

class MainDependencies {
  MainDependencies._({
    required this.context,
  });

  final BuildContext context;

  static MainDependencies? _instance;

  factory MainDependencies.of(context) =>
      _instance ?? MainDependencies._(context: context);

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
        ChangeNotifierProvider<MainProvider>(
          create: (context) => MainProvider(
            getPackagesUseCase: context.read(),
          ),
        ),
      ];
  List<Provider> get _analytics => [];
  List<Provider> get _httpClients => [];
  List<Provider> get _dataStorages => [];
  List<Provider> get _dataSources => [];
  List<Provider> get _repositories => [
        Provider<MainRepository>(
          create: (context) => MainRepositoryImpl(),
        ),
      ];
  List<Provider> get _useCases => [
        Provider<GetPackagesUseCase>(
          create: (context) => GetPackagesUseCase(
            repository: context.read(),
          ),
        ),
      ];
  List<Provider> get _interceptors => [];
}
