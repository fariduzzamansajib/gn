import 'package:get/get.dart';

import '../controller/navigation_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    // Get.lazyPut(() => SignUpController());
    // Get.lazyPut(()=> HomeController());
  }
}
