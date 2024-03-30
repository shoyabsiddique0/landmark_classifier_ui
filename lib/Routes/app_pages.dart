import 'package:get/get.dart';
import 'package:landmark_classifier/Home/home_bindings.dart';
import 'package:landmark_classifier/Home/home_screen.dart';
import 'package:landmark_classifier/Result/result_bindings.dart';
import 'package:landmark_classifier/Result/result_screen.dart';
import 'package:landmark_classifier/Routes/app_routes.dart';
import 'package:landmark_classifier/Scanner/scanner_bindings.dart';
import 'package:landmark_classifier/Scanner/scanner_screen.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => const HomeScreen(),
        binding: HomeBindings()),
    GetPage(
        name: AppRoutes.resultScreen,
        page: () => const ResultScreen(),
        binding: ResultBinding()),
    GetPage(
        name: AppRoutes.scannerScreen,
        page: () => const ScannerScreen(),
        binding: ScannerBindings()),
  ];
}
