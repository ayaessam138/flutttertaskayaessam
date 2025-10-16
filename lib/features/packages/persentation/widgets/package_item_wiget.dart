import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class PackageItemWiget extends StatelessWidget {
  const PackageItemWiget({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppWidth.w10,
      children: [
        SvgPicture.asset(icon),

        Flexible(
          child: AutoSizeText(
            maxLines: 1,
            title,
            style: TextStyles.font14Medium.copyWith(
              color: ColorsManager.darkBlue,
            ),
          ),
        ),
      ],
    );
  }
}
