import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class HeadlineSection extends StatelessWidget {
  const HeadlineSection({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.k090A4E,
                fontSize: 16.sp)),
        TextButton(
          onPressed: () {},
          child: Text("View All",
              style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColors.k363232,
                    fontSize: 12.sp,
                    decoration: TextDecoration.underline,
                  )),
        )
      ],
    );
  }
}
