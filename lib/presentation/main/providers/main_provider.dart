import 'package:flutter/material.dart';
import 'package:template/domain/usecases/main_usecases.dart';

class MainProvider extends ChangeNotifier {
  MainProvider({required this.getPackagesUseCase});

  GetPackagesUseCase getPackagesUseCase;
}
