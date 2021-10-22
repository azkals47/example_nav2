import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current?.location;
        print(title);
        return Scaffold(
          backgroundColor: Colors.green,
          body: Obx(
            () => (!controller.isLoading)
                ? (controller.isAuthenticated)
                    ? GetRouterOutlet(
                        initialRoute: Routes.HOME,
                      )
                    : GetRouterOutlet(
                        initialRoute: Routes.LOGIN,
                        // anchorRoute: '/',
                        // filterPages: (afterAnchor) {
                        //   return afterAnchor.take(1);
                        // },
                      )
                : _buildSplash(),
          ),
        );
      },
    );
  }

  Widget _buildSplash() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'test',
          ),
        ],
      ),
    );
  }
}
