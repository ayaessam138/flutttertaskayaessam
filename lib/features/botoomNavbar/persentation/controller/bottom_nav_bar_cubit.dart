import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/features/home/persentation/screens/home_screen.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/screens/packages_screen.dart';
import 'package:meta/meta.dart';


import '../../../../core/helpers/dependency_injection.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  static BottomNavBarCubit get get => getIt();

  List<Widget> pages = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    PackagesScreen(),
  ];

  int currentIndex = 0;

  void changeIndex(int index) {
    emit(BottomNavBarInitial());
    currentIndex = index;
    print("changeIndexchangeIndex");
    print(currentIndex);
    emit(BottomNavBarChangeIndex());
  }
}
