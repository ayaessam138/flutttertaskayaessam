import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';

class PackagesContanierWidget extends StatelessWidget {
  const PackagesContanierWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
      child: Container(
        padding: EdgeInsets.all(AppPadding
            .p16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorsManager.darkBlue.withValues(alpha: 0.1),
              offset: const Offset(0, 4),
              blurRadius: 5,
            ),
          ],
          color: ColorsManager.white,
          borderRadius: BorderRadius.circular(AppRadius.r8),
          border: Border.all(color: ColorsManager.black.withValues(alpha: 0.1)),
        ),
        child: child,
      ),
    );
  }
}
