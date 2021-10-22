import 'package:get/get.dart';

class RootController extends GetxController {
  //TODO: Implement RootController

  final count = 0.obs;

  final RxBool _isLoading = false.obs;

  get isLoading => _isLoading.value;

  final RxBool _isAuthenticated = false.obs;

  get isAuthenticated => _isAuthenticated.value;

  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  fetch() async {
    _isLoading.value = true;
    Future.delayed(Duration(seconds: 3))
        .then((value) => _isAuthenticated.value = false)
        .whenComplete(() => _isLoading.value = false);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
