import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardReviewView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashboardReviewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
              () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'DashboardReviewView is working',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
