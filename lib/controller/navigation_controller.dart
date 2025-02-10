import 'package:flutter/material.dart';
import 'package:garments_niyog/pages/overtime_page.dart';
import 'package:garments_niyog/pages/profile_page.dart';
import 'package:garments_niyog/pages/setting_page.dart';
import 'package:get/get.dart';

import '../pages/home_page.dart';

class NavigationController extends GetxController {
  final globalKey = GlobalKey<ScaffoldState>();

  final currentIndex = RxInt(0);
  final isHomeActive = RxBool(true);

  // set setCurrentIndex(String item) => currentIndex.value = getMenuIndex(item);

  Widget getCurrentPage() {
    switch (currentIndex.value) {
      case 0:
        return HomePage();
      case 1:
        return ProfilePage();
      case 2:
        return SettingPage();
      case 3:
        return OvertimePage();
      default:
        return Center(child: Text('page 3'));
    }
  }
  //  int getMenuIndex(String item) {
  //   return bottomMenus.indexOf(item);
  // }
}
