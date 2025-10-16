import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/screens/filters_screen.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return FiltersScreen();
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText("أستكشف العروض", style: TextStyles.font16Medium),
          Row(
            spacing: AppWidth.w4,
            children: [
              AutoSizeText(
                "الكل",
                style: TextStyles.font16Bold.copyWith(
                  color: ColorsManager.black.withValues(alpha: 0.5),
                ),
              ),
              SvgPicture.asset(AppImages.arrowBackicon),
            ],
          ),
        ],
      ),
    );
  }
}
