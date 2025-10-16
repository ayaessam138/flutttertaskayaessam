import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertaskayaessam/features/botoomNavbar/persentation/controller/bottom_nav_bar_cubit.dart';

import 'dependency_injection.dart';

List<BlocProvider> appBlocProviders() {
  return [
    BlocProvider<BottomNavBarCubit>(
      create: (context) => getIt<BottomNavBarCubit>(),
    ),

  ];
}
