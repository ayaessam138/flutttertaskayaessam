import 'package:fluttertaskayaessam/core/localstorage/sql_helper.dart';
import 'package:fluttertaskayaessam/features/home/data/models/categorey_model.dart';
import 'package:fluttertaskayaessam/features/home/data/models/product_model.dart';

class HomeLocalDatasource {
  final SqlHelper sqlHelper;

  HomeLocalDatasource({required this.sqlHelper});

   static Future<List<CategoryModel>> getAllCategories() async {
    final db = await SqlHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('categories');
    return maps.map((map) => CategoryModel.fromMap(map)).toList();
  }


  static Future<List<ProductModel>> getAllProducts() async {
    final db = await SqlHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('products');
    return maps.map((map) => ProductModel.fromMap(map)).toList();
  }
}
