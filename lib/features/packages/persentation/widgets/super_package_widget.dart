import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';
import 'package:fluttertaskayaessam/features/packages/data/models/packages_model.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/package_item_wiget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_contanier_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_header_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_views_widget.dart';

class SuperPackageWidget extends StatefulWidget {
  const SuperPackageWidget({super.key, required this.packageModel});
  final PackageModel packageModel;
  @override
  State<SuperPackageWidget> createState() => _SuperPackageWidgetState();
}

class _SuperPackageWidgetState extends State<SuperPackageWidget> {
  bool isSelected = false;

  @override

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          children: [
            SizedBox(height: 10.h),
            PackagesContanierWidget(
              child: Column(
                children: [
                  PackageHeaderWidget(
                    packageName: widget.packageModel.name ?? '',
                    packagePrice: "${widget.packageModel.price ?? '0.0'}",
                    value: isSelected,
                    onChanged: (bool? value) {
                      setState(() {
                        isSelected = value!;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          spacing: AppHeight.h10,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PackageItemWiget(
                              icon: AppImages.expiresIcon,
                              title: widget.packageModel.duration ?? '',
                            ),
                            PackageItemWiget(
                              icon: AppImages.rocketIcon,
                              title: widget.packageModel.views ?? '',
                            ),
                            Row(
                              spacing: AppWidth.w10,
                              children: [
                                SvgPicture.asset(AppImages.keepIcon),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "تثبيت في مقوال الصحي",
                                        style: TextStyles.font14Medium.copyWith(
                                          color: ColorsManager.darkBlue,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "(خلال 24 ساعه)",
                                        style: TextStyles.font14Medium.copyWith(
                                          color: ColorsManager.redColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
            
                            PackageItemWiget(
                              icon: AppImages.palceIcon,
                              title: widget.packageModel.place ?? '',
                            ),
                            PackageItemWiget(
                              icon: AppImages.premiumIcon,
                              title: widget.packageModel.perium ?? '',
                            ),
                            PackageItemWiget(
                              icon: AppImages.keepIcon,
                              title: widget.packageModel.stabilizing ?? '',
                            ),
                            Row(
                              spacing: AppWidth.w10,
                              children: [
                                SvgPicture.asset(AppImages.keepIcon),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "تثبيت في مقوال الصحي",
                                        style: TextStyles.font14Medium.copyWith(
                                          color: ColorsManager.darkBlue,
                                        ),
                                      ),
                                      AutoSizeText(
                                        "(خلال 24 ساعه)",
                                        style: TextStyles.font14Medium.copyWith(
                                          color: ColorsManager.redColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: PackagesViewsWidget(viewsimage: AppImages.views24),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w16),
          child: SvgPicture.asset(AppImages.superPackageBadge),
        ),
      ],
    );
  }
}
