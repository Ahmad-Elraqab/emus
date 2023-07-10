import 'package:template/domain/repositories/package_details_repository.dart';

class GetPackageDetailsUseCase {
  PackageDetailsRepository repository;
  GetPackageDetailsUseCase(this.repository);

  Future execute() => repository.getPackageDetails();
}
