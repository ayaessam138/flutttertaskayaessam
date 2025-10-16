import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/features/packages/data/models/packages_model.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/package_item_wiget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_contanier_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_header_widget.dart';

class BasicPackageWidget extends StatefulWidget {
  const BasicPackageWidget({super.key, required this.packagesModel});
  final PackageModel packagesModel;
  @override
  State<BasicPackageWidget> createState() => _BasicPackageWidgetState();
}

class _BasicPackageWidgetState extends State<BasicPackageWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return PackagesContanierWidget(
      child: Column(
        children: [
          PackageHeaderWidget(
            packageName: widget.packagesModel.name??'',
            packagePrice: "${widget.packagesModel.price??0.0}",
            value: isSelected,
            onChanged: (bool? value) {
              setState(() {
                isSelected = value!;
              });
            },
          ),
          PackageItemWiget(
            icon: AppImages.expiresIcon,
            title:widget.packagesModel.duration??'',
          ),
        ],
      ),
    );
  }
}
