import 'package:get/get.dart';
import 'package:landmark_classifier/Scanner/scanner_controller.dart';

class ScannerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScannerController>(() => ScannerController());
  }
}
