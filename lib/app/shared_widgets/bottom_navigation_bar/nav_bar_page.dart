import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/app/shared_widgets/bottom_navigation_bar/nav_bar_controller.dart';
import '../../modules/first_page/controllers/first_page_controller.dart';
import '../../modules/first_page/views/first_page_view.dart';
import '../../modules/second_page/controllers/second_page_controller.dart';
import '../../modules/second_page/views/second_page_view.dart';
import '../../modules/third_page/views/third_page_view.dart';
import '../../modules/~home/controllers/home_controller.dart';
import '../../modules/~home/views/home_view.dart';

class NavBarPage extends StatelessWidget {
  final NavBarController navBarController = Get.put(NavBarController());

  final screens = [
    HomeView(),
    FirstPageView(),
    SecondPageView(),
    ThirdPageView(),
  ];

  NavBarPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Obx(
          () => IndexedStack(
              index: navBarController.selectedIndex.value, children: screens),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            navBarController.changeIndex(index);
          },
          currentIndex: navBarController.selectedIndex.value,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.checklist_sharp),
                label: "Search",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: "User Profile",
                backgroundColor: Colors.blue),
          ],
        ));
  }
}
