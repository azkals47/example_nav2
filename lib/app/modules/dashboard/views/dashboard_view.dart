import 'package:example_nav2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';


class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'DashboardView is working',
                style: TextStyle(fontSize: 20),
              ),
              Text('Time: ${controller.now.value.toString()}'),

              MaterialButton(
                child: Text(
                  'Go to DETAIL !!',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                onPressed: () {
                  Get.rootDelegate.toNamed(Routes.DASHBOARD_DETAIL);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
