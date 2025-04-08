import 'package:garments_niyog/base/base.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  void init() async {
    await Base.loginController.checkLoginStatus();
  }

  final isDarkTheme = RxBool(false);
}
