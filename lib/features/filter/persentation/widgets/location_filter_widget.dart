import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class LocationFilterWidget extends StatelessWidget {
  const LocationFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppWidth.w24,
                vertical: AppHeight.h20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorsManager.black.withValues(alpha: 0.1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: AppWidth.w12,
                    children: [
                      SvgPicture.asset(AppImages.locationIcon),
                      Column(
                        children: [
                          AutoSizeText(
                            "الموقع",
                            style: TextStyles.font14Medium.copyWith(
                              color: ColorsManager.darkBlue,
                            ),
                          ),
                          AutoSizeText(
                            " مصر",
                            style: TextStyles.font12Regular.copyWith(
                              color: ColorsManager.black.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppImages.arrowForwardIcon),
                ],
              ),
            ),
      ]);
  }
}