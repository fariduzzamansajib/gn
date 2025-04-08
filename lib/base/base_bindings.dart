import 'package:garments_niyog/controller/config_controller.dart';
import 'package:garments_niyog/controller/login_controller.dart';
import 'package:get/get.dart';

import '../controller/navigation_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => ConfigController());
    Get.lazyPut(() => LoginController());
    // Get.lazyPut(() => SignUpController());
    // Get.lazyPut(()=> HomeController());
  }
}
