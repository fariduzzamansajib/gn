import 'package:garments_niyog/controller/config_controller.dart';
import 'package:garments_niyog/controller/login_controller.dart';
import 'package:get/get.dart';

import '../controller/navigation_controller.dart';

class Base {
  Base._();

  static final navigationController = Get.find<NavigationController>();
  static final configController = Get.find<ConfigController>();
  static final loginController = Get.find<LoginController>();
  // static final languageController = Get.find<LanguageController>();
  // static final signUpController = Get.find<SignUpController>();
  // static final homeController = Get.find<HomeController>();
}
