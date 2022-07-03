part of 'app_pages.dart';

// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart
/*
If you are going to use routes/snackbars/dialogs/bottomsheets without context, 
or use the high-level Get APIs, you need to simply add "Get" before your 
MaterialApp, turning it into GetMaterialApp and enjoy!
*GetMaterialApp( // Before: MaterialApp(
*  home: MyHome(),
*)
Navigation without named routes#
To navigate to a new screen:
*Get.to(NextScreen());
To close snackbars, dialogs, bottomsheets, or anything you would normally 
close with Navigator.pop(context);
*Get.back();
To go to the next screen and no option to go back to the previous screen 
(for use in SplashScreens, login screens and etc.)
*Get.off(NextScreen());
To go to the next screen and cancel all previous routes 
(useful in shopping carts, polls, and tests)
*Get.offAll(NextScreen());
To navigate to the next route, and receive or update data as soon as you 
return from it:
*var data = await Get.to(Payment());
on other screen, send a data for previous route:
*Get.back(result: 'success');
And use it:
ex:
*if(data == 'success') madeAnything();
*/
abstract class Routes {
  Routes._();
  static const NAVBARPAGE = _Paths.NAVBARPAGE;
  static const HOME = _Paths.HOME;
  static const FIRST_PAGE = _Paths.FIRST_PAGE;
  static const SECOND_PAGE = _Paths.SECOND_PAGE;
  static const THIRD_PAGE = _Paths.THIRD_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const NAVBARPAGE = '/navbar-page';
  static const HOME = '/home';
  static const FIRST_PAGE = '/first-page';
  static const SECOND_PAGE = '/second-page';
  static const THIRD_PAGE = '/third-page';
}
