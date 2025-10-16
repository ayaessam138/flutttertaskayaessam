part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}
class CategoriesLoading extends HomeState {}
class CategoriesSuccess extends HomeState {
  final List<CategoryModel> categories;
  const CategoriesSuccess(this.categories);
}
class CategoriesFailure extends HomeState {
  final String errorMessage;
  const CategoriesFailure(this.errorMessage);
}

/// 🔹 Products states
class ProductsLoading extends HomeState {}
class ProductsSuccess extends HomeState {
  final List<ProductModel> products;
  const ProductsSuccess(this.products);
}
class ProductsFailure extends HomeState {
  final String errorMessage;
  const ProductsFailure(this.errorMessage);
}