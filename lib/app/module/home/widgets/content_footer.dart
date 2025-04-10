import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class ContentFooter extends StatelessWidget {
  const ContentFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 306.h,
      width: context.width,
      color: AppColors.kF6F9FD,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          Text(
            "STRIKE",
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kF2560B,
                  fontSize: 20.sp,
                ),
          ),
          Text(
            "Bowling game community App".toUpperCase(),
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 14.sp,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(3, (index) {
              return _buildTextButton(title: list[index], onPressed: () {});
            }),
          ),
          Image.asset(
            "assets/images/footer-image.png",
            fit: BoxFit.cover,
            height: 128.h,
            width: 128.w,
          ),
          SizedBox(height: 20.h),
          Text(
            "Version 2.0".toUpperCase(),
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.kACACAC,
                ),
          )
        ],
      ),
    );
  }
}

Widget _buildTextButton(
    {String title = "Privacy Policy", required void Function()? onPressed}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      title,
      style: MyStyles.getTextTheme().bodyLarge?.copyWith(
            fontWeight: FontWeight.w300,
            color: AppColors.kF2560B,
            fontSize: 14.sp,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: AppColors.kF2560B,
          ),
    ),
  );
}

List list = ["Privacy Policy", "Terms & Conditions", "FaQs"];
