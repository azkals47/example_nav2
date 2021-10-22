import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final String id;

  ProductDetailsController(this.id);
  @override
  void onInit() {
    super.onInit();
    Get.log('ProductDetailsController created with id: $id');
  }

  @override
  void onClose() {
    Get.log('ProductDetailsController close with id: $id');
    super.onClose();
  }
}
