import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../base/base.dart';
import '../components/app_bar_component.dart';
import '../components/bottom_navigation_component.dart';
import '../components/drawer_component.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Base.navigationController.globalKey,
      backgroundColor: Colors.white,
      appBar: AppBarComponent(),
      drawer: DrawerComponent(),
      endDrawer: Drawer(),
      body: Obx(() => Base.navigationController.getCurrentPage()),
      bottomNavigationBar: BottomNavigationComponent(),
    );
  }
}
