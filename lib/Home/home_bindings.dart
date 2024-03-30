import 'package:get/get.dart';
import 'package:landmark_classifier/Home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
