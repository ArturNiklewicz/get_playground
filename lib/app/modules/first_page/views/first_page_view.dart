import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/first_page_controller.dart';

class FirstPageView extends GetView<FirstPageController> {
  final FirstPageController firstPageController =
      Get.put(FirstPageController());
  FirstPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<FirstPageController>(
              builder: (_) => Text(
                'FirstPageView counter: ${_.count}',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          firstPageController.increment();
        },
      ),
    );
  }
}
