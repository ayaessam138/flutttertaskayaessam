
import 'package:flutter/material.dart';

import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';

import 'package:fluttertaskayaessam/features/packages/data/models/packages_model.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/package_item_wiget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_contanier_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_header_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_views_widget.dart';

class ExtraPackageWidget extends StatefulWidget {
  const ExtraPackageWidget({super.key, required this.packagesModel});
  final PackageModel packagesModel;
  @override
  State<ExtraPackageWidget> createState() => _ExtraPackageWidgetState();
}

class _ExtraPackageWidgetState extends State<ExtraPackageWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return PackagesContanierWidget(
      child: Column(
        children: [
          PackageHeaderWidget(
            packageName: widget.packagesModel.name ?? '',
            packagePrice: "${widget.packagesModel.price ?? 0.0}",
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
                      title: widget.packagesModel.duration??'',
                    ),
                    PackageItemWiget(
                      icon: AppImages.rocketIcon,
                      title: widget.packagesModel.views??'',
                    ),
                   
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: PackagesViewsWidget(viewsimage: AppImages.views7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
