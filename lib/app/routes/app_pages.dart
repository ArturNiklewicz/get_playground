import 'package:get/get.dart';
import '../modules/first_page/bindings/first_page_binding.dart';
import '../modules/first_page/views/first_page_view.dart';
import '../modules/second_page/bindings/second_page_binding.dart';
import '../modules/second_page/views/second_page_view.dart';
import '../modules/third_page/bindings/third_page_binding.dart';
import '../modules/third_page/views/third_page_view.dart';
import '../modules/~home_page/bindings/home_binding.dart';
import '../modules/~home_page/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVBARPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FIRST_PAGE,
      page: () => FirstPageView(),
      binding: FirstPageBinding(),
    ),
    GetPage(
      name: _Paths.SECOND_PAGE,
      page: () => SecondPageView(),
      binding: SecondPageBinding(),
    ),
    GetPage(
      name: _Paths.THIRD_PAGE,
      page: () => ThirdPageView(),
      binding: ThirdPageBinding(),
    ),
  ];
}
