import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/helpers/dependency_injection.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/features/home/persentation/controller/cubit/home_cubit.dart';
import 'package:fluttertaskayaessam/features/home/persentation/widgets/home_appbar_widget.dart';
import 'package:fluttertaskayaessam/features/home/persentation/widgets/home_filters_list_widget.dart';
import 'package:fluttertaskayaessam/features/home/persentation/widgets/home_products_categories_widget.dart';
import 'package:fluttertaskayaessam/features/home/persentation/widgets/home_products_gridview_widget.dart';
import 'package:fluttertaskayaessam/features/home/persentation/widgets/home_shipping_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<HomeCubit>(),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppWidth.w16,
                vertical: AppHeight.h12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppbarWidget(),
                  AppSpace.vertical(AppHeight.h14),
                  HomeFiltersListWidget(),
                  AppSpace.vertical(AppHeight.h35),
                  HomeProductsCategoriesListWidget(),
                  AppSpace.vertical(AppHeight.h35),
                  HomeShippingWidget(),
                  AppSpace.vertical(AppHeight.h20),
                  HomeProductsGridviewWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
