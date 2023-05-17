import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/modules/login_page/controllers/login_page_controller.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "uts",
      initialRoute: Routes.PAGE_AWAL,
      getPages: AppPages.routes,
      initialBinding: BindingsBuilder(() {
        Get.put(LoginPageController());
      }),
    ),
  );
}
