import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/page_awal/bindings/page_awal_binding.dart';
import '../modules/page_awal/views/page_awal_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_AWAL,
      page: () => const PageAwalView(),
      binding: PageAwalBinding(),
    ),
  ];
}
