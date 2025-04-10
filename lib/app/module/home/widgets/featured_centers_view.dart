import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task/app/module/home/widgets/headline_section.dart';
import 'package:machine_task/app/module/widgets/widget_card_shell.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class FeaturedCentersView extends StatelessWidget {
  FeaturedCentersView({super.key});
  final List<String> names = [
    'Areena',
    'Liam',
    'Zara',
    'Noah',
    'Mila',
    'Ethan',
    'Luna',
    'Aria'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadlineSection(title: "Featured Centers"),
        SizedBox(
          height: 220.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return WidgetCardShell(
                  color: index.isEven ? AppColors.kFFF1EB : AppColors.kE8F2FF,
                  imageUrl:
                      "https://picsum.photos/200/${Random().nextInt(100) + 50}",
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      names.elementAt(index),
                      style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                    ),
                    Text(
                      "Lussail - 1.2 km",
                      style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                    ),
                    _buildRatingContainer(rating: Random().nextInt(max(5, 1))),
                    const Divider(color: Colors.grey, thickness: 0.5),
                    SizedBox(height: 10.h),
                    _buildRateContainer(rate: Random().nextInt(max(1000, 1))),
                  ],
                );
              },
              itemCount: 5),
        )
      ],
    );
  }
}

Widget _buildRateContainer({required int rate}) {
  return Text(
    "$rate QAR/-",
    style: MyStyles.getTextTheme().bodyLarge?.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.kC9511D,
          fontSize: 14.sp,
        ),
  );
}

Widget _buildRatingContainer({required int rating}) {
  return Container(
    width: 99.w,
    height: 24.h,
    margin: EdgeInsets.symmetric(
      vertical: 5.h,
    ),
    padding: EdgeInsets.symmetric(horizontal: 5.w),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5.r),
    ),
    child: Row(
      children: [
        Icon(Icons.star_rate_rounded, size: 14.h, color: Colors.amber),
        SizedBox(width: 5.w),
        Text(
          "$rating.0 Rating",
          style: MyStyles.getTextTheme().bodyLarge?.copyWith(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 12.sp),
        )
      ],
    ),
  );
}
