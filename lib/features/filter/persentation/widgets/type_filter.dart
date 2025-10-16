import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/filter_widget.dart';

class TypeFilter extends StatelessWidget {
  const TypeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "نوع ",
            style: TextStyles.font16Medium.copyWith(
              color: ColorsManager.black.withValues(alpha: 0.5),
            ),
          ),
          AppSpace.vertical(AppHeight.h12),
          Wrap(
            spacing: AppWidth.w12,
            runSpacing: AppHeight.h12,
            children: [
              FilterWidget(title: "الكل "),
              FilterWidget(title: "توين هاوس"),
              FilterWidget(title: "فيلا منفصلة"),
            ],
          ),
        ],
      ),
    );
  }
}
