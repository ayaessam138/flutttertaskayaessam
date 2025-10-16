import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class PackagesViewsWidget extends StatelessWidget {
  const PackagesViewsWidget({super.key, required this.viewsimage});
  final String viewsimage;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppHeight.h4,
      children: [
        SvgPicture.asset(viewsimage),
        AutoSizeText(
          ' ضعف عدد المشاهدات',
          style: TextStyles.font12Regular.copyWith(
            color: ColorsManager.darkBlue,
            decoration: TextDecoration.underline,
            decorationColor: ColorsManager.darkBlue
          ),
        ),
      ],
    );
  }
}
