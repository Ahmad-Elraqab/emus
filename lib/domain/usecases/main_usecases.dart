import 'package:template/domain/repositories/main_repository.dart';

class GetPackagesUseCase {
  final MainRepository repository;

  GetPackagesUseCase({required this.repository});

  Future execute({int? page}) async {
    return await repository.getPackages(page: page);
  }
}
