import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/helpers/dependency_injection.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

import 'package:fluttertaskayaessam/features/packages/persentation/cubit/cubit/packges_cubit.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/basic_package_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/contact_sales_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/package_next_button_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/packages_appbar_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/extra_package_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/plus_package_widget.dart';
import 'package:fluttertaskayaessam/features/packages/persentation/widgets/super_package_widget.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: BlocProvider(
        create: (context) => getIt<PackgesCubit>()..getAllPackges(),
        child: SafeArea(
          child: BlocBuilder<PackgesCubit, PackgesState>(
            buildWhen: (previous, current) =>
                current is PackgesLoading ||
                current is PackgesFailure ||
                current is PackgesSuccess,
            builder: (context, state) {
              if (state is PackgesLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is PackgesFailure) {
                return Center(
                  child: AutoSizeText(
                    state.errorMessage,
                    style: TextStyles.font18Bold,
                  ),
                );
              } else if (state is PackgesSuccess) {
                return SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppHeight.h24,
                    children: [
                      PackagesAppbarWidget(),
                      BasicPackageWidget(
                        packagesModel: state.packages.firstWhere(
                          (packagesModel) => packagesModel.id == 1,
                        ),
                      ),

                      ExtraPackageWidget(
                        packagesModel: state.packages.firstWhere(
                          (packagesModel) => packagesModel.id == 2,
                        ),
                      ),
                      PlusPackageWidget(
                        packageModel: state.packages.firstWhere(
                          (packagesModel) => packagesModel.id == 3,
                        ),
                      ),
                      SuperPackageWidget(
                        packageModel: state.packages.firstWhere(
                          (packagesModel) => packagesModel.id == 4,
                        ),
                      ),
                      ContactSalesWidget(),
                      AppSpace.vertical(200.h),
                      Divider(color: ColorsManager.greyColor, thickness: 1),
                      PackageNextButtonWidget(),
                    ],
                  ),
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
