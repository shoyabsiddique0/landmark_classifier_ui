import 'package:get/get.dart';
import 'package:landmark_classifier/Result/result_controller.dart';

class ResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultController>(() => ResultController());
  }
}
