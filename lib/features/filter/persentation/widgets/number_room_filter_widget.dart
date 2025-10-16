import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/filter/persentation/widgets/filter_widget.dart';

class NumberRoomFilterWidget extends StatelessWidget {
  const NumberRoomFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            "عدد الغرف",
            style: TextStyles.font16Medium.copyWith(
              color: ColorsManager.black.withValues(alpha: 0.5),
            ),
          ),
          AppSpace.vertical(AppHeight.h12),
          Wrap(
            spacing: AppWidth.w12,
            runSpacing: AppHeight.h12,
            children: [
              FilterWidget(title: "14 غرف"),
              FilterWidget(title: "5 غرف+"),
              FilterWidget(title: "الكل"),
              FilterWidget(title: "غرفتين"),
              FilterWidget(title: "3 غرف3 غرف"),
            ],
          ),
        ],
      ),
    );
  }
}
