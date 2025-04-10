import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_task/app/module/home/controller/home_view_controller.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class UpcommingCompetitonView extends GetView<HomeViewController> {
  const UpcommingCompetitonView({super.key, required this.carouselController});

  final CarouselSliderController carouselController;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          CarouselSlider(
            items: imageUrls
                .map(
                  (item) => Container(
                    // height: 190.h,
                    // width: 308.w,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                                style: MyStyles.getTextTheme()
                                    .bodyLarge
                                    ?.copyWith(
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
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
                height: 250,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  controller.updateIndex(index);
                }),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: controller.index.value == entry.key ? 14.0 : 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: controller.index.value == entry.key
                        ? AppColors.kF2560B
                        : Colors.grey[400],
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

final List<String> imageUrls = [
  'https://via.placeholder.com/600x300.png?text=Slide+1',
  'https://via.placeholder.com/600x300.png?text=Slide+2',
  'https://via.placeholder.com/600x300.png?text=Slide+3',
];
