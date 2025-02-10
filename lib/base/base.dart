import 'package:get/get.dart';

import '../controller/navigation_controller.dart';

class Base {
  Base._();

  static final navigationController = Get.find<NavigationController>();
  // static final languageController = Get.find<LanguageController>();
  // static final signUpController = Get.find<SignUpController>();
  // static final homeController = Get.find<HomeController>();
}
