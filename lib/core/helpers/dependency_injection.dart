import 'package:fluttertaskayaessam/core/localstorage/sql_helper.dart';
import 'package:fluttertaskayaessam/features/botoomNavbar/persentation/controller/bottom_nav_bar_cubit.dart';
import 'package:fluttertaskayaessam/features/home/data/datasource/home_local_datasource.dart';
import 'package:fluttertaskayaessam/features/home/data/repo/home_repo.dart';
import 'package:fluttertaskayaessam/features/home/persentation/controller/cubit/home_cubit.dart';
import 'package:fluttertaskayaessam/features/packages/data/datasource/packages_local_datasource.dart';
import 'package:fluttertaskayaessam/features/packages/data/repo/packages_repo.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/cubit/cubit/packges_cubit.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

Future initDI() async {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton(() => SqlHelper());
  getIt.registerLazySingleton<BottomNavBarCubit>(() => BottomNavBarCubit());

  // //home
  getIt.registerLazySingleton(() => HomeLocalDatasource(sqlHelper: getIt()));
  getIt.registerFactory<HomeRepo>(() => HomeRepo(localDatasource: getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(homeRepo: getIt()));
  //packages
  getIt.registerLazySingleton(() => PackagesLocalDatasource(sqlHelper: getIt()));
  getIt.registerFactory<PackagesRepo>(() => PackagesRepo(packagesLocalDatasource: getIt()));
  getIt.registerFactory<PackgesCubit>(() => PackgesCubit(packagesRepo: getIt()));
  // getIt.registerLazySingleton(() => HomeRemoteDatasource(dioClient: getIt()));

  // getIt.registerLazySingleton(
  //   () => HomeRepo(
  //     homeLocalDatasource: getIt(),
  //     homeRemoteDatasource: getIt(),
  //     networkInfo: getIt(),
  //   ),
  // );

  // //cart
  // getIt.registerLazySingleton(() => CartLocalDatasource(sqlHelper: getIt()));
  // getIt.registerLazySingleton(() => CartRepo(localDatasource: getIt()));
  // getIt.registerFactory<CartBloc>(() => CartBloc(repo: getIt()));
  // //fav
  // getIt.registerLazySingleton(() => FavLocalDatasource(sqlHelper: getIt()));
  // getIt.registerLazySingleton(() => FavRepo(localDatasource: getIt()));
  // getIt.registerFactory<FavoritesBloc>(() => FavoritesBloc(repo: getIt()));
  // //productdetails
  // getIt.registerLazySingleton(() => ProductdetailsRemoteDatasource( dioClient: getIt()));
  // getIt.registerLazySingleton(() => ProductDetailsRepo(productdetailsRemoteDatasource: getIt()));
  // getIt.registerFactory<ProductsDetiailsBloc>(() => ProductsDetiailsBloc(repo: getIt()));
}
