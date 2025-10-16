import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class PackagesAppbarWidget extends StatelessWidget {
  const PackagesAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
      child: Column(
        spacing: AppHeight.h12,
        children: [
          Row(
            spacing: AppWidth.w20,
            children: [
              SvgPicture.asset(AppImages.arrowBackwardIcon),
              Flexible(
                child: AutoSizeText(
                  " أختر الباقات اللى تناسبك",
                  maxLines: 1,
                  style: TextStyles.font24Medium,
                ),
              ),
            ],
          ),
          AutoSizeText(
            " أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك",
            style: TextStyles.font14Regular.copyWith(
              color: ColorsManager.darkBlue.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
