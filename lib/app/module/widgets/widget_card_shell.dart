import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WidgetCardShell extends StatelessWidget {
  const WidgetCardShell(
      {super.key,
      this.height,
      this.width,
      required this.imageUrl,
      required this.children,
      this.color,
      this.mainAxisAlignment,
      this.crossAxisAlignment});
  final double? height;
  final double? width;
  final String imageUrl;
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
      ),
      margin: EdgeInsets.only(right: 10.w),
      height: height ?? 211.h,
      width: width ?? 164.w,
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          Container(
            height: height ?? 75.h,
            width: width ?? context.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.network(
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    "assets/icons/error.jpg",
                    fit: BoxFit.cover,
                  );
                },
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            children: children,
          )
        ],
      ),
    );
  }
}
