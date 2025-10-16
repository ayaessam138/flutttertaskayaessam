import 'package:fluttertaskayaessam/core/localstorage/sql_helper.dart';

import 'package:fluttertaskayaessam/features/packages/data/models/packages_model.dart';

class PackagesLocalDatasource {
  final SqlHelper sqlHelper;

  PackagesLocalDatasource({required this.sqlHelper});

   Future<List<PackageModel>> getAllPackages() async {
    final db = await SqlHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('packages');
    return maps.map((map) => PackageModel.fromMap(map)).toList();
  }
}
