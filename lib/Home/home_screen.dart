import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:landmark_classifier/Home/home_controller.dart';
import 'package:landmark_classifier/Routes/app_routes.dart';
import 'package:landmark_classifier/Theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landmark_classifier/Widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put<HomeController>(HomeController());
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            homeController.uploadFile(isCamera: true);
          },
          child: Icon(
            Icons.camera,
            size: 48.w,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: kColorPrimary,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            padding: EdgeInsets.only(top: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DrawerButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: kColorSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(8.sp),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.sp, color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon((Icons.person_3_rounded)))
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "You Should Visit Next",
                  style: GoogleFonts.urbanist().copyWith(
                      color: Colors.black,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.resultScreen),
                    child: const HomeCard()),
                GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.resultScreen),
                    child: const HomeCard()),
                GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.resultScreen),
                    child: const HomeCard()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
