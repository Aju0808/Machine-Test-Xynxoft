import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task/app/module/home/widgets/headline_section.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class UpcommingCompetitonView extends StatelessWidget {
  const UpcommingCompetitonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadlineSection(title: "Upcoming Competitions"),
        SizedBox(
          height: 190.h,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              height: 190.h,
              width: 308.w,
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://picsum.photos/200/${Random().nextInt(100) + 50}"),
                    fit: BoxFit.cover),
                color: AppColors.kE8F2FF,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: AppColors.kF2560B,
                          fixedSize: Size(85.w, 24.h)),
                      onPressed: () {},
                      child: Text("Join Now",
                          style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 14.sp)),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Upcoming Competition",
                    style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 18.sp,
                        ),
                  ),
                  Text(
                    "5 April, 7:30 PM | Friendly Match",
                    style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
