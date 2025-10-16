import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key, required this.title});
  final String title;

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppWidth.w8,
          vertical: AppHeight.h12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r30),
          border: Border.all(color: isSelected ? ColorsManager.mainColor : ColorsManager.black.withValues(alpha: 0.1)),
        ),
        child: AutoSizeText(
          widget.title,
          style: TextStyles.font14Medium.copyWith(
            color: isSelected ? ColorsManager.mainColor : ColorsManager.black.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
