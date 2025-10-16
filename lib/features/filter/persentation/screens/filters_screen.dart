import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/building_case_filter.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/filters_appbar_widget.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/location_filter_widget.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/mounth_filter_widget.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/number_room_filter_widget.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/payment_method_filter_widget.dart';

import 'package:fluttertaskayaessam/features/filter/persentation/widgets/type_filter.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/price_filter_widget.dart';
class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: AppHeight.h16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
                  child: FiltersAppbarWidget(),
                ),
                AppSpace.vertical(AppHeight.h32),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
                  child: AutoSizeText(
                    "الفئة",
                    style: TextStyles.font16Bold.copyWith(
                      color: ColorsManager.black.withValues(alpha: 0.5),
                    ),
                  ),
                ),
                AppSpace.vertical(AppHeight.h12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppImages.realStateIcon),
                          AppSpace.horizontal(AppWidth.w16),
                          Column(
                            children: [
                              AutoSizeText(
                                "عقارات",
                                style: TextStyles.font14Medium.copyWith(
                                  color: ColorsManager.darkBlue,
                                ),
                              ),
                              AutoSizeText(
                                "فلل البيع",
                                style: TextStyles.font12Regular.copyWith(
                                  color: ColorsManager.black.withValues(
                                    alpha: 0.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AutoSizeText(
                        "تغيير",
                        style: TextStyles.font14Bold.copyWith(
                          color: ColorsManager.purpleColor,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSpace.vertical(AppHeight.h28),
                LocationFilterWidget(),
                AppSpace.vertical(AppHeight.h20),
                MounthFilterWidget(),
                AppSpace.vertical(AppHeight.h20),
            
                TypeFilter(),
                AppSpace.vertical(AppHeight.h20),
                NumberRoomFilterWidget(),
                AppSpace.vertical(AppHeight.h20),
                PriceFilterWidget(),
                AppSpace.vertical(AppHeight.h20),
                PaymentMethodFilterWidget(),
                AppSpace.vertical(AppHeight.h20),
                BuildingCaseFilter(),
                AppSpace.vertical(AppHeight.h80),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
                  child: Container(
                    width: AppWidth.fullWidth(context),
                    padding: EdgeInsets.symmetric(vertical: AppHeight.h12),
                    decoration: BoxDecoration(
                      color: ColorsManager.mainColor,
                      borderRadius: BorderRadius.circular(AppRadius.r32),
                    ),
                    child: Center(
                      child: AutoSizeText(
                        "شاهد 10,000+ نتائج",
                        style: TextStyles.font16Bold.copyWith(
                          color: ColorsManager.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
