import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/second_page_controller.dart';

class SecondPageView extends GetView<SecondPageController> {
  final SecondPageController secondPageController =
      Get.put(SecondPageController());
  SecondPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'SecondPageView counter: ${secondPageController.count}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          secondPageController.increment();
        },
      ),
    );
  }
}
