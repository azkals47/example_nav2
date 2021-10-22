import 'package:example_nav2/app/modules/product_review/reivew_controller.dart';
import 'package:get/get.dart';

class ReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReviewController>(
          () => ReviewController(),
    );
  }
}
