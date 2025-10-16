import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class PriceFilterWidget extends StatelessWidget {
  const PriceFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
          child: AutoSizeText(
            "السعر",
            style: TextStyles.font16Medium.copyWith(
              color: ColorsManager.black.withValues(alpha: 0.5),
            ),
          ),
        ),
        AppSpace.vertical(AppHeight.h12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
          child: Row(
            spacing: AppWidth.w12,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "أقل سعر",
                    hintStyle: TextStyles.font14Medium.copyWith(
                      color: ColorsManager.black.withValues(alpha: 0.5),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: AppHeight.h16,
                      horizontal: AppWidth.w12,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      borderSide: BorderSide(
                        color: ColorsManager.black.withValues(alpha: 0.1),
                        width: 1.w,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      borderSide: BorderSide(
                        color: ColorsManager.black.withValues(alpha: 0.1),
                        width: 1.2.w,
                      ),
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      borderSide: BorderSide(
                        color: ColorsManager.black.withValues(alpha: 0.1),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: " أقصى سعر",
                    hintStyle: TextStyles.font14Medium.copyWith(
                      color: ColorsManager.black.withValues(alpha: 0.5),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: AppHeight.h16,
                      horizontal: AppWidth.w12,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      borderSide: BorderSide(
                        color: ColorsManager.black.withValues(alpha: 0.1),
                        width: 1.w,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      borderSide: BorderSide(
                        color: ColorsManager.black.withValues(alpha: 0.1),
                        width: 1.2.w,
                      ),
                    ),

                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppRadius.r8),
                      borderSide: BorderSide(
                        color: ColorsManager.black.withValues(alpha: 0.1),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
