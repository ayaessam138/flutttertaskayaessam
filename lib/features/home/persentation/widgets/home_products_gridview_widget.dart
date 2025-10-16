import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/home/data/models/product_model.dart';
import 'package:fluttertaskayaessam/features/home/persentation/controller/cubit/home_cubit.dart';

class HomeProductsGridviewWidget extends StatefulWidget {
  const HomeProductsGridviewWidget({super.key});

  @override
  State<HomeProductsGridviewWidget> createState() =>
      _HomeProductsGridviewWidgetState();
}

class _HomeProductsGridviewWidgetState
    extends State<HomeProductsGridviewWidget> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeCubit>(context).getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is ProductsLoading ||
          current is ProductsFailure ||
          current is ProductsSuccess,
      builder: (context, state) {
        if (state is ProductsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ProductsFailure) {
          return AutoSizeText(state.errorMessage, style: TextStyles.font18Bold);
        } else if (state is ProductsSuccess) {
          var products = state.products;
          return Wrap(
            spacing: AppWidth.w8,
            runSpacing: AppHeight.h8,
            children: List.generate(
              products.length,
              (index) => HomeProductsGridviewCardWidget(
                productModel: products[index],
              ),
            ),
          ) ;
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}

class HomeProductsGridviewCardWidget extends StatelessWidget {
  const HomeProductsGridviewCardWidget({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      width: (AppWidth.fullWidth(context)/2)-AppWidth.w8*3,
      child: Column(
        spacing: AppHeight.h8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppRadius.r4),
              topRight: Radius.circular(AppRadius.r4),
            ),
            child: Image.asset(
              productModel.image ?? '',
              fit: BoxFit.cover,
              width: AppWidth.fullWidth(context),
              height: 215.h,
            ),
          ),
          AppSpace.vertical(AppHeight.h8),
          Row(
            spacing: AppWidth.w4,
            children: [
              Flexible(
                child: AutoSizeText(
                  productModel.title ?? '',
                  style: TextStyles.font14Medium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SvgPicture.asset(AppImages.discountIcon),
            ],
          ),
          Row(
            spacing: AppWidth.w8,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        "${productModel.oldPrice ?? 0.0}",
                        style: TextStyles.font14Medium.copyWith(
                          color: ColorsManager.redColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Flexible(
                      child: AutoSizeText(
                        "${productModel.price ?? 0.0}",
                        style: TextStyles.font14Regular.copyWith(
                          color: ColorsManager.black.withValues(alpha: 0.5),
                          decoration: TextDecoration.lineThrough,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(AppImages.favoriteIcon),
            ],
          ),
          Row(
            spacing: AppWidth.w4,
            children: [
              SvgPicture.asset(AppImages.fireIcon),
              Flexible(
                child: AutoSizeText(
                  "تم بيع 3.3k+",
                  style: TextStyles.font10Regular.copyWith(
                    color: ColorsManager.darkBlue.withValues(alpha: 0.5),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(AppImages.verfcationIcon),
              Row(
                spacing: AppWidth.w4,
                children: [
                  SvgPicture.asset(AppImages.cartIcon),
                  Image.asset(AppImages.companyIcon),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: AppWidth.w12,
//               mainAxisSpacing: AppHeight.h12,
//               childAspectRatio: 0.6,
//             ),

//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               return HomeProductsGridviewCardWidget(
//                 productModel: products[index],
//               );
//             },
//           )