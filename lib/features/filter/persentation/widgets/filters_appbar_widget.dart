import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class FiltersAppbarWidget extends StatelessWidget {
  const FiltersAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: AppWidth.w20,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                AppImages.close,
                height: AppHeight.h15,
                width: AppWidth.w10,
              ),
            ),
            AutoSizeText("فلترة", style: TextStyles.font24Medium),
          ],
        ),
        AutoSizeText(
          "رجوع للأفتراضى",
          style: TextStyles.font16Medium.copyWith(
            color: ColorsManager.mainColor,
          ),
        ),
      ],
    );
  }
}
