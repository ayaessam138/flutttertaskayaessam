import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/helpers/app_images.dart';
import 'package:fluttertaskayaessam/features/botoomNavbar/persentation/controller/bottom_nav_bar_cubit.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      buildWhen: (previous, current) => current is BottomNavBarChangeIndex,
      builder: (context, state) {
        final cubit = BottomNavBarCubit.get;

        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: cubit.pages[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: cubit.changeIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorsManager.white,
            selectedItemColor: ColorsManager.mainColor,
            unselectedItemColor: ColorsManager.darkBlue.withValues(alpha: 0.5),
            
            selectedFontSize: 12.sp,
            unselectedFontSize: 12.sp,
            elevation: 5,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.homeIcon,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 0
                        ? ColorsManager.mainColor
                        : ColorsManager.darkBlue.withValues(alpha: 0.5),
                    BlendMode.srcIn,
                  ),
                  width: 24.w,
                  height: 24.h,
                ),
                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.chatIcon,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 1
                        ? ColorsManager.mainColor
                        : ColorsManager.darkBlue.withValues(alpha: 0.5),
                    BlendMode.srcIn,
                  ),
                  width: 24.w,
                  height: 24.h,
                ),
                label: " محادثة",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.advertisementIcon,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 2
                        ? ColorsManager.mainColor
                        : ColorsManager.darkBlue.withValues(alpha: 0.5),
                    BlendMode.srcIn,
                  ),
                  width: 24.w,
                  height: 24.h,
                ),
                label: "أضف أعلان",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.advertisementIcon,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 3
                        ? ColorsManager.mainColor
                        : ColorsManager.darkBlue.withValues(alpha: 0.5),
                    BlendMode.srcIn,
                  ),
                  width: 24.w,
                  height: 24.h,
                ),
                label: "أعلاناتى",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppImages.addAdvertisementcon,
                  colorFilter: ColorFilter.mode(
                    cubit.currentIndex == 4
                        ? ColorsManager.mainColor
                        : ColorsManager.darkBlue.withValues(alpha: 0.5),
                    BlendMode.srcIn,
                  ),
                  width: 24.w,
                  height: 24.h,
                ),
                label: "حسابى",
              ),
            ],
          ),
        );
      },
    );
  }
}
