
import 'package:dartz/dartz.dart';
import 'package:fluttertaskayaessam/features/packages/data/datasource/packages_local_datasource.dart';
import 'package:fluttertaskayaessam/features/packages/data/models/packages_model.dart';
class PackagesRepo {
  final PackagesLocalDatasource packagesLocalDatasource;

  PackagesRepo({required this.packagesLocalDatasource});

  Future<Either<String, List<PackageModel>>> getAllPackages() async {
    try {
      final result = await packagesLocalDatasource.getAllPackages();
      return Right(result);
    } catch (e) {
      return Left('فشل تحميل الأقسام: $e');
    }
  }}