import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class PackageNextButtonWidget extends StatelessWidget {
  const PackageNextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPadding.p16),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h12),
        decoration: BoxDecoration(
          color: ColorsManager.mainColor,
          borderRadius: BorderRadius.circular(AppRadius.r32),
        ),
        child: Row(
          spacing: AppWidth.w4,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              "التالى",
              style: TextStyles.font16Bold.copyWith(color: ColorsManager.white),
            ),
            SvgPicture.asset(
              AppImages.arrowBackicon,
              colorFilter: ColorFilter.mode(
                ColorsManager.white,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
