import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:fluttertaskayaessam/features/home/data/models/categorey_model.dart';
import 'package:fluttertaskayaessam/features/home/data/models/product_model.dart';
import 'package:fluttertaskayaessam/features/home/data/repo/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit({required this.homeRepo}) : super(HomeInitial());

        
  Future<void> getAllCategories() async {
    emit(CategoriesLoading());
    final result = await homeRepo.getAllCategories();

    result.fold(
      (error) => emit(CategoriesFailure(error)),
      (categories) => emit(CategoriesSuccess(categories)),
    );
  }

  Future<void> getAllProducts() async {
    emit(ProductsLoading());
    final result = await homeRepo.getAllProducts();

    result.fold(
      (error) => emit(ProductsFailure(error)),
      (products) => emit(ProductsSuccess(products)),
    );
  }
}
