import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  static Database? _db;

  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  static Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'app_data.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  static Future<void> _onCreate(Database db, int version) async {

    await db.execute('''
      CREATE TABLE categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        icon TEXT
      );
    ''');

    await db.execute('''
      CREATE TABLE products (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        price REAL NOT NULL,
        old_price REAL,
        image TEXT,
        category_id INTEGER,
        is_favorite INTEGER DEFAULT 0,
        FOREIGN KEY (category_id) REFERENCES categories (id)
      );
    ''');

    await db.execute('''
      CREATE TABLE packages (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        price REAL NOT NULL,
        duration TEXT,
        features TEXT,
        place TEXT,
        perium TEXT,
        stabilizing TEXT,
        stabilizing_duration TEXT,
        views TEXT
 
      );
    ''');


    await _insertInitialData(db);
  }

  static Future<void> _insertInitialData(Database db) async {
    // Categories
    await db.insert('categories', {
      'name': 'موضة رجالى',
      'icon': AppImages.menCategory,
    });
    await db.insert('categories', {
      'name': 'موبايلات',
      'icon': AppImages.mobilesCategory,
    });
    await db.insert('categories', {
      'name': 'منتجات تجميل',
      'icon': AppImages.makeupCategory,
    });
    await db.insert('categories', {
      'name': 'ساعات',
      'icon': AppImages.watchesCategory,
    });

    // Products
    await db.insert('products', {
      'title': 'جاكيت من الصوف',
      'price': 32000.0,
      'old_price': 66000.0,
      'image': AppImages.hoodieProduct,
      'category_id': 2,
    });

    await db.insert('products', {
      'title': 'اجاكيت من الصوف',
      'price': 32000.0,
      'old_price': 66000.0,
      'image': AppImages.shirtProduct,
      'category_id': 2,
    });

    await db.insert('products', {
      'title': ' اجاكيت من الصوف',
      'price': 32000.0,
      'old_price': 66000.0,
      'image': AppImages.shoesProduct,
      'category_id': 2,
    });
    await db.insert('products', {
      'title': ' اجاكيت من الصوف',
      'price': 32000.0,
      'old_price': 66000.0,
      'image': AppImages.hoodieProduct,
      'category_id': 2,
    });
    // Packages
    await db.insert('packages', {
      'name': 'أساسية',
      'price': 3000.0,
      'duration': '30 يوم',
      'features': 'صلاحية الإعلان 30 يوم',
    });

    await db.insert('packages', {
      'name': 'إكسترا',
      'price': 3000.0,
      'duration': 'صلاحية الإعلان 30 يوم',
      'views': 'رفع لأعلى القائمة كل 3 أيام',
    });

    await db.insert('packages', {
      'name': 'بلس',
      'price': 3000.0,
      'duration': 'صلاحية الأعلان 30 يوم',
      'features': 'تثبيت فى مقاول صحى ( خلال 48 ساعة القادمة ) ',
      'views': 'رفع لأعلى القائمة كل 3 أيام',
      'place': 'ظهور في كل المحافظات',
      'perium': '  أعلان مميز ',
      'stabilizing_duration': 'تثبيت فى مقاول صحى ( خلال 48 ساعة القادمة ) ',
      'stabilizing': 'تثبيت فى مقاول صحى فى الجهراء ',
    });

    await db.insert('packages', {
      'name': 'سوبر',
      'price': 3000.0,
      'duration': '30 يوم',
      'features': 'تثبيت فى مقاول صحى ( خلال 48 ساعة القادمة ) ',
      'place': 'ظهور في كل المحافظات',
      'perium': '  أعلان مميز ',
      'stabilizing_duration': 'تثبيت فى مقاول صحى ( خلال 48 ساعة القادمة ) ',
      'stabilizing': 'تثبيت فى مقاول صحى فى الجهراء ',
      'views': 'رفع لأعلى القائمة كل 3 أيام',
    });
  }
}
