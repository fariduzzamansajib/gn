import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base.dart';
import '../helpers/hex_color.dart';

class BottomNavigationComponent extends StatelessWidget {
  const BottomNavigationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: hexToColor('#33A0DA'),
        currentIndex: Base.navigationController.currentIndex.value,
        onTap: (index) {
          Base.navigationController.currentIndex.value = index;
        },
        selectedItemColor: Color.fromARGB(255, 243, 245, 244),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Overtime',
          ),
        ],
      ),
    );
  }
}
