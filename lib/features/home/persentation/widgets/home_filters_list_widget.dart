import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskayaessam/core/helpers/app_spacing.dart';
import 'package:fluttertaskayaessam/core/theming/colors.dart';
import 'package:fluttertaskayaessam/core/theming/styles.dart';

class HomeFiltersListWidget extends StatelessWidget {
  HomeFiltersListWidget({super.key});
  List<String> categories = [
    "كلل للبيع",
    "ملابس",
    "أكسسوارات",
    "الكترونيات",
    "كلل للبيع",
    "ملابس",
    "أكسسوارات",
    "الكترونيات",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          categories.length,
          (index) => HomeFiltersWidget(title: categories[index]),
        ),
      ),
    );
  }
}

class HomeFiltersWidget extends StatefulWidget {
  const HomeFiltersWidget({super.key, required this.title});
  final String title;

  @override
  State<HomeFiltersWidget> createState() => _HomeFiltersWidgetState();
}

class _HomeFiltersWidgetState extends State<HomeFiltersWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: AppWidth.w8),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppWidth.w8,
            vertical: AppHeight.h12,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? ColorsManager.orangeColor.withValues(alpha: 0.05)
                : ColorsManager.white,
            borderRadius: BorderRadius.circular(AppRadius.r4),
            border: Border.all(
              color: ColorsManager.black.withValues(alpha: 0.1),
            ),
          ),
          child: AutoSizeText(
            widget.title,
            style: TextStyles.font14Medium.copyWith(
              color: isSelected
                  ? ColorsManager.orangeColor
                  : ColorsManager.darkBlue,
            ),
          ),
        ),
      ),
    );
  }
}
