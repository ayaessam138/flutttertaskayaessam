import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class PackageHeaderWidget extends StatelessWidget {
  const PackageHeaderWidget({
    super.key,
    required this.packageName,
    required this.packagePrice,
    required this.value,
    required this.onChanged,
  });

  final String packageName;
  final String packagePrice;
  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CheckboxListTile(
                activeColor: ColorsManager.purpleColor,
                contentPadding: EdgeInsets.zero,
                value: value,
                onChanged: onChanged,
                title: AutoSizeText(
                  packageName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font16Bold.copyWith(
                    color: value ? ColorsManager.purpleColor : null,
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),

            AutoSizeText(
              packagePrice,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.font16Bold.copyWith(
                color: ColorsManager.orangeColor,
                decoration: TextDecoration.underline,
                decorationColor: ColorsManager.orangeColor,
              ),
            ),
          ],
        ),
        Divider(
          color: ColorsManager.black.withValues(alpha: 0.1),
          thickness: 1,
        ),
        AppSpace.vertical(AppHeight.h12),
      ],
    );
  }
}
