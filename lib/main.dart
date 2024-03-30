import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:landmark_classifier/Home/home_screen.dart';
import 'package:landmark_classifier/Routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 800),
      child: GetMaterialApp(
        title: "Landmark Classification",
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
      ),
    );
  }
}
