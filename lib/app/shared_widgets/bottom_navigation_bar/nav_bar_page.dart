import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_playground/app/shared_widgets/bottom_navigation_bar/nav_bar_controller.dart';
import '../../modules/first_page/controllers/first_page_controller.dart';
import '../../modules/first_page/views/first_page_view.dart';
import '../../modules/second_page/controllers/second_page_controller.dart';
import '../../modules/second_page/views/second_page_view.dart';
import '../../modules/third_page/views/third_page_view.dart';
import '../../modules/~home_page/views/home_view.dart';
import '../../navigation/custom_navigation_bar.dart';

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Custom Animated Bottom Navigation Bar"),
          backgroundColor: Colors.green[200],
        ), */
        body: getBody(),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages ',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomeView(),
      FirstPageView(),
      SecondPageView(),
      ThirdPageView(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
