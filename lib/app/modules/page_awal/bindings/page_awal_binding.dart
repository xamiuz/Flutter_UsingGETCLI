import 'package:get/get.dart';

import '../controllers/page_awal_controller.dart';

class PageAwalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageAwalController>(
      () => PageAwalController(),
    );
  }
}
