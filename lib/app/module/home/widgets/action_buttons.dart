import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_task/core/constants/image_constants.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 15.h,
        mainAxisSpacing: 10.w,
        childAspectRatio: 1.5 / 1,
        crossAxisCount: 2,
        mainAxisExtent: 130.h,
      ),
      itemBuilder: (context, index) => InkWell(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.kE8F2FF,
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter:
                  const ColorFilter.mode(Colors.grey, BlendMode.modulate),
              image: AssetImage(actionList.values.toList()[index]),
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          padding: EdgeInsets.all(10.h),
          child: Text(actionList.keys.toList()[index],
              style: MyStyles.getTextTheme().bodyMedium?.copyWith(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    decorationThickness: 2.0,
                  )),
        ),
      ),
      itemCount: 4,
    );
  }
}

Map<String, String> actionList = {
  "Book a Venue": ImageConstants.buttonOneBg,
  "Host a Match": ImageConstants.buttonTwoBg,
  "Coaches": ImageConstants.buttonThreeBg,
  "Shop Now": ImageConstants.buttonFourBg,
};
