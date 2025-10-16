part of 'packges_cubit.dart';

sealed class PackgesState extends Equatable {
  const PackgesState();

  @override
  List<Object> get props => [];
}

final class PackgesInitial extends PackgesState {}

final class PackgesLoading extends PackgesState {}

final class PackgesFailure extends PackgesState {
  final String errorMessage;

  const PackgesFailure( {required this.errorMessage});
}

final class PackgesSuccess extends PackgesState {
  final List<PackageModel> packages;

  const PackgesSuccess({required this.packages});
}
