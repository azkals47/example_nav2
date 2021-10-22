import 'package:example_nav2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardDetailView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'DashboardDetailView is working',
              style: TextStyle(fontSize: 20),
            ),
            MaterialButton(
              child: Text(
                'Go to REVIEW !!',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                Get.rootDelegate.toNamed(Routes.DASHBOARD_REVIEW);
              },
            ),
          ],
        ),
      ),
    );
  }
}
