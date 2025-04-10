import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task/app/module/home/widgets/headline_section.dart';
import 'package:machine_task/app/module/widgets/widget_card_shell.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class ExpertCoachesView extends StatelessWidget {
  ExpertCoachesView({super.key});
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
        const HeadlineSection(title: "Expert Coaches"),
        SizedBox(
          height: 170.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return WidgetCardShell(
                  color: index.isEven ? AppColors.kFFF1EB : AppColors.kE8F2FF,
                  imageUrl:
                      "https://picsum.photos/200/${Random().nextInt(100) + 50}",
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      "5.0 rating",
                      style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                    ),
                    const Divider(color: Colors.grey, thickness: 0.5),
                    SizedBox(height: 10.h),
                    _buildTypeContainer(type: "Coach"),
                  ],
                );
              },
              itemCount: 5),
        )
      ],
    );
  }
}

Widget _buildTypeContainer({required String type}) {
  return Text(
    type,
    style: MyStyles.getTextTheme().bodyLarge?.copyWith(
          fontWeight: FontWeight.w300,
          color: Colors.black,
          fontSize: 12.sp,
        ),
  );
}
