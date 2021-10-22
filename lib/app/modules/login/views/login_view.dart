import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              child: Text(
                'Do LOGIN !!',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                // final thenTo = Get.rootDelegate.currentConfiguration!
                //     .currentPage!.parameters?['then'];
                Get.rootDelegate.offNamed(Routes.HOME);
              },
            ),

            MaterialButton(
              child: Text(
                'Go to FORGOT !!',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
