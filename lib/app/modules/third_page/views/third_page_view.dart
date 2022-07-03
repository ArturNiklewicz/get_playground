import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/third_page_controller.dart';

class ThirdPageView extends GetView<ThirdPageController> {
  const ThirdPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'ThirdPageView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      onConfirm: () => Get.back(),
                      middleText:
                          "Dialog made in 3 lines of code\nRAM\nPAM\nPAM");
                },
                child: Text('Get dialog box'))
          ],
        ),
      ),
    );
  }
}
