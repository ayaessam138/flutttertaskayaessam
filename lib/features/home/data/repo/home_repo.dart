import 'package:fluttertaskayaessam/features/home/data/datasource/home_local_datasource.dart';
import 'package:fluttertaskayaessam/features/home/data/models/categorey_model.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertaskayaessam/features/home/data/models/product_model.dart';
class HomeRepo {
  final HomeLocalDatasource localDatasource;

  HomeRepo({required this.localDatasource});

  Future<Either<String, List<CategoryModel>>> getAllCategories() async {
    try {
      final result = await HomeLocalDatasource.getAllCategories();
      return Right(result);
    } catch (e) {
      return Left('فشل تحميل الأقسام: $e');
    }
  }

  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    try {
      final result = await HomeLocalDatasource.getAllProducts();
      return Right(result);
    } catch (e) {
      return Left('فشل تحميل المنتجات: $e');
    }
  }
}
