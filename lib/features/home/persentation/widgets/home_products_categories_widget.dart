import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/home/data/models/categorey_model.dart';
import 'package:fluttertaskayaessam/features/home/persentation/controller/cubit/home_cubit.dart';

class HomeProductsCategoriesListWidget extends StatefulWidget {
  const HomeProductsCategoriesListWidget({super.key});

  @override
  State<HomeProductsCategoriesListWidget> createState() =>
      _HomeProductsCategoriesListWidgetState();
}

class _HomeProductsCategoriesListWidgetState
    extends State<HomeProductsCategoriesListWidget> {
  @override
  initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).getAllCategories();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is CategoriesFailure ||
            current is CategoriesLoading ||
            current is CategoriesSuccess,
        builder: (context, state) {
          if (state is CategoriesLoading) {
            return Center(child: CircularProgressIndicator());
          }
          else if(state is CategoriesFailure){
            return AutoSizeText(state.errorMessage,style: TextStyles.font18Medium,);
          }
           else if (state is CategoriesSuccess) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                state.categories.length,
                (index) => HomeProductsCategoriesWidget(
                  categoryModel: state.categories[index],
                ),
              ),
            );
          }
          else{
          return SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class HomeProductsCategoriesWidget extends StatelessWidget {
  const HomeProductsCategoriesWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: AppWidth.w12),
      child: Column(
        spacing: AppHeight.h8,

        children: [
          SizedBox(
            height: 55.h,
            width: 75.w,
            child: Image.asset(categoryModel.icon ?? '', fit: BoxFit.cover),
          ),
          AutoSizeText(
            categoryModel.name ?? '',
            style: TextStyles.font12Regular.copyWith(
              color: ColorsManager.darkBlue,
            ),
          ),
          AppSpace.vertical(AppHeight.h12),
        ],
      ),
    );
  }
}
