import 'package:get/get.dart';

class SecondPageController extends GetxController {
  //TODO! Need to use this controller in many other places, and outside of GetBuilder
  // * If one controller is used for two routes, and you remove one route,
  // * then the controller will be also deleted (as the creator ID of the
  // * controller was deleted). In such case add "autoRemove: false" flag.

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    count.value++;
    update();
  }
}
