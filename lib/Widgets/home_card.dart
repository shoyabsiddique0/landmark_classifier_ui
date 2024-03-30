import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landmark_classifier/Theme/colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kColorSecondary, borderRadius: BorderRadius.circular(6.sp)),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Name of Landmark",
              style: GoogleFonts.urbanist().copyWith(
                  color: Colors.black,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.sp),
                  child: Image.asset(
                    "assets/images/eiffel.jpg",
                    width: 164.w,
                    height: 139.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_pin),
                    Text(
                      "Visit",
                      style: GoogleFonts.urbanist().copyWith(
                          color: Colors.black,
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
