import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'base/base_bindings.dart';
import 'config/scroll_behavior.dart';
import 'helpers/hex_color.dart';
import 'pages/splash_page.dart';

// ignore: use_key_in_widget_constructors
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initial Bindings
      initialBinding: BaseBindings(),
      // translationsKeys: AppTranslation.translationsKeys,

      ///  locale: Get.deviceLocale,
      fallbackLocale: Locale('bn', 'BD'),
      locale: Locale('bn', 'BD'),
      defaultTransition: Transition.fade,
      color: hexToColor('#78909C'),
      builder: (context, widget) => ScrollConfiguration(
        behavior: ScrollBehaviorModified(),
        child: widget!,
      ),
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.themeData,
      //theme
      // theme: Themes.light,
      // darkTheme: Themes.dark,
      // themeMode: ThemeMode.light,
      home: SplashPage(),
    );
  }
}
