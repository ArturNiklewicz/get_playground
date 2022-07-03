import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/app/shared_widgets/bottom_navigation_bar/nav_bar_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_widgets/bottom_navigation_bar/nav_bar.dart';
import '../../first_page/controllers/first_page_controller.dart';
import '../../first_page/views/first_page_view.dart';
import '../../second_page/controllers/second_page_controller.dart';
import '../../second_page/views/second_page_view.dart';
import '../../third_page/views/third_page_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final FirstPageController firstPageController =
      Get.put(FirstPageController());
  final SecondPageController secondPageController =
      Get.put(SecondPageController());

  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            GetBuilder<FirstPageController>(
                builder: (_) => Text("FirstPage counter: ${_.count}")),
            ElevatedButton(
                onPressed: () {
                  Get.to(FirstPageView());
                },
                child: Text("first_page"))
          ]),
          Column(
            children: [
              GetBuilder<SecondPageController>(
                  builder: (_) => Text("SecondPage counter: ${_.count}")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(SecondPageView());
                  },
                  child: Text("second_page")),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(ThirdPageView());
              },
              child: Text("third_page"))
        ],
      )),
    );
  }
}
