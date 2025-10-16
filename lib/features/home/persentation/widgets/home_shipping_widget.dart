import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class HomeShippingWidget extends StatelessWidget {
  const HomeShippingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppWidth.w10,
        vertical: AppHeight.h12,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.orangeColor.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(AppRadius.r4),
      ),
      child: Row(
        spacing: AppWidth.w8,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                SvgPicture.asset(AppImages.checkicon),
                Flexible(
                  child: AutoSizeText(
                    maxLines: 1,
                    "شحن مجانى",
                    style: TextStyles.font12Regular.copyWith(
                      color: ColorsManager.greenColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: AutoSizeText(
              " لأى عرض تطلبه دلوقتى !",
              style: TextStyles.font10Regular,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
