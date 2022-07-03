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
            // TODO! GetBuilder w/ onInit() & on close() methods from Controller
            // TODO: GetBuilder w/ onInit() fetch api & on close() close the streams methods from Controller

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
          Get.snackbar(
            '${firstPageController.count} WOOBA WOOBA DUB DUB',
            'You are on the first page',
            backgroundColor: Colors.black,
            colorText: Colors.white,
          );
        },
      ),
    );
  }
}
