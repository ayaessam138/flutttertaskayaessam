import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class ContactSalesWidget extends StatelessWidget {
  const ContactSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppWidth.w16, ),
      child: Container(
        width: AppWidth.fullWidth(context),
        padding: EdgeInsets.all(AppPadding.p8),
        decoration: BoxDecoration(
          color: ColorsManager.greyColor,
          border: Border.all(color: ColorsManager.black.withValues(alpha: 0.05)),
          borderRadius: BorderRadius.circular(AppRadius.r8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppHeight.h4,
          children: [
            AutoSizeText("باقات مخصصة لك", style: TextStyles.font14Medium),
            AutoSizeText(
              " تواصل معنا لأختيار الباقة المناسبة لك",
              style: TextStyles.font12Regular,
            ),
            AutoSizeText(
              " فريق المبيعات",
              style: TextStyles.font16Bold.copyWith(
                color: ColorsManager.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
