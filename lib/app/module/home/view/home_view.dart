import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:machine_task/app/module/home/controller/home_view_controller.dart';
import 'package:machine_task/app/module/home/widgets/action_buttons.dart';
import 'package:machine_task/app/module/home/widgets/content_footer.dart';
import 'package:machine_task/app/module/home/widgets/expert_coaches_view.dart';
import 'package:machine_task/app/module/home/widgets/featured_centers_view.dart';
import 'package:machine_task/app/module/home/widgets/sports_items.dart';
import 'package:machine_task/app/module/home/widgets/upcomming_competiton_view.dart';
import 'package:machine_task/app/module/home/widgets/upcomming_training_view.dart';
import 'package:machine_task/core/constants/image_constants.dart';
import 'package:machine_task/core/theme/app_colors.dart';
import 'package:machine_task/core/theme/app_text_style.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
      init: HomeViewController(),
      builder: (homeController) {
        return Scaffold(
          bottomNavigationBar: _buildBottonNavigationBar(),
          appBar: _buildAppBar(title: "Lussail, Qatar"),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      _buildBannerContainer(context),
                      FeaturedCentersView(),
                      SizedBox(height: 20.h),
                      const ActionButtons(),
                      SizedBox(height: 20.h),
                      UpcommingCompetitonView(
                        carouselController: homeController.controller,
                      ),
                      SizedBox(height: 20.h),
                      ExpertCoachesView(),
                      SizedBox(height: 20.h),
                      SportsItems(),
                      SizedBox(height: 20.h),
                      UpcommingTrainingView(),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
                const ContentFooter()
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBottonNavigationBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: SizedBox(
        height: 70.h,
        child: BottomNavigationBar(
          unselectedLabelStyle: MyStyles.getTextTheme().bodyMedium?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
          selectedLabelStyle: MyStyles.getTextTheme().bodyMedium?.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
              ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: AppColors.k141252,
          type: BottomNavigationBarType.fixed,
          items: List.generate(
            4,
            (index) => BottomNavigationBarItem(
              label: bottomNavigationBarIcons.keys.toList()[index],
              icon: Icon(bottomNavigationBarIcons.values.toList()[index]),
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget? _buildAppBar({required String title}) {
  return AppBar(
    title: Row(
      children: [
        Text(title,
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                color: AppColors.k0F386D,
                fontWeight: FontWeight.w300,
                fontSize: 14.sp)),
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_down,
              color: AppColors.k0F386D, size: 30),
        )
      ],
    ),
    actions: [
      _buildLevelContainer(level: TrophieLevel.intermediate),
      SizedBox(width: 10.w),
      _buildNotificatonIcon(count: 5),
      SizedBox(width: 10.w),
    ],
  );
}

Widget _buildLevelContainer({required TrophieLevel level}) {
  return Container(
    height: 31.h,
    width: 108.w,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: AppColors.kE8F2FF, borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(ImageConstants.torphieIcon, height: 14.h, width: 14.w),
        SizedBox(width: 5.w),
        Text(
          level.name,
          style: MyStyles.getTextTheme().bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: AppColors.k0F386D),
        ),
      ],
    ),
  );
}

Widget _buildNotificatonIcon({int count = 0}) {
  return Stack(
    children: [
      CircleAvatar(
        radius: 17.5.r,
        backgroundColor: AppColors.kFFF1EB,
        child: Icon(Icons.notifications_rounded,
            color: const Color.fromARGB(255, 241, 211, 61), size: 28.h),
      ),
      Positioned(
        top: 7.h,
        right: 5.w,
        child: Badge.count(count: count, smallSize: 12.r),
      )
    ],
  );
}

enum TrophieLevel { intermediate, beginner, advanced }

Widget _buildBannerContainer(BuildContext context,
    {String imageUrl = ImageConstants.bannerImage,
    String title = "Keep yourself fit with us",
    String subTitle = "Create your\nGame"}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
    margin: EdgeInsets.symmetric(vertical: 20.h),
    height: 143.h,
    width: context.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(imageUrl),
      ),
      color: AppColors.kE8F2FF,
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                fontWeight: FontWeight.w300,
                color: AppColors.k0F386D,
                fontSize: 14.sp)),
        Text(subTitle,
            style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.kF2560B,
                fontSize: 16.sp)),
        FilledButton(
          style: FilledButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: AppColors.k141252,
              fixedSize: Size(85.w, 24.h)),
          onPressed: () {},
          child: Text("Join Now",
              style: MyStyles.getTextTheme().bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 14.sp)),
        )
      ],
    ),
  );
}

Map<String, IconData> bottomNavigationBarIcons = {
  "Home": Icons.home,
  "Play": Icons.sports_gymnastics_outlined,
  "Venue": Icons.location_on_outlined,
  "Profile": Icons.person,
};
