import 'package:example_nav2/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetWidget<ProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product detail'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ProductDetailsView is working',
              style: TextStyle(fontSize: 20),
            ),
            Text('ProductId: ${controller.id}'),

            MaterialButton(
              child: Text(
                'Go to PRODUCT REVIEW !!',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              onPressed: () {
                Get.rootDelegate.toNamed(Routes.PRODUCT_REVIEW(id: controller.id));
              },
            ),
          ],
        ),
      ),
    );
  }
}
