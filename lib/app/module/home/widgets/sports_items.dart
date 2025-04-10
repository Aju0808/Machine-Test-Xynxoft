import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task/app/module/home/widgets/headline_section.dart';
import 'package:machine_task/app/module/widgets/widget_card_shell.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class SportsItems extends StatelessWidget {
  SportsItems({super.key});
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
        const HeadlineSection(title: "Sports Items"),
        SizedBox(
          height: 200.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return WidgetCardShell(
                  width: 184.w,
                  height: 97.h,
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
                      "Doha Muncipality",
                      style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                    ),
                    SizedBox(height: 15.h),
                    FilledButton(
                      style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          padding: EdgeInsets.zero,
                          backgroundColor: AppColors.kF2560B,
                          fixedSize: Size(131.w, 28.h)),
                      onPressed: () {},
                      child: Text("Read More",
                          style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 14.sp)),
                    )
                  ],
                );
              },
              itemCount: 5),
        )
      ],
    );
  }
}
