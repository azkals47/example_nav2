import 'package:example_nav2/app/modules/forgot_password/controller/forgot_controller.dart';
import 'package:example_nav2/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ForgotView extends GetView<ForgotController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              child: Text(
                'BACK !!',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                Get.rootDelegate.offNamed(Routes.LOGIN);
                // final thenTo = Get.rootDelegate.currentConfiguration!
                //     .currentPage!.parameters?['then'];
              },
            ),
          ],
        ),
      ),
    );
  }
}
