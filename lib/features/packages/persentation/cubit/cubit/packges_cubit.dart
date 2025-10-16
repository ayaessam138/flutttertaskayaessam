import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluttertaskayaessam/features/packages/data/models/packages_model.dart';
import 'package:fluttertaskayaessam/features/packages/data/repo/packages_repo.dart';

part 'packges_state.dart';

class PackgesCubit extends Cubit<PackgesState> {
  PackgesCubit({required this.packagesRepo}) : super(PackgesInitial());
  final PackagesRepo packagesRepo;
    Future<void> getAllPackges() async {
    emit(PackgesLoading());
    final result = await packagesRepo.getAllPackages();

    result.fold(
      (error) => emit(PackgesFailure(errorMessage:error)),
      (packages) => emit(PackgesSuccess(packages:packages)),
    );
  }
}
