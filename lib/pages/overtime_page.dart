import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OvertimePage extends StatelessWidget {
  const OvertimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            spacing: 10,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                      border: Border.all(width: 3, color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                    ),
                    child: Center(
                      child: Text("Add Total Overtime"),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                      border: Border.all(width: 3, color: Colors.green),
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                    ),
                    child: Center(
                      child: Text("See Total Overtime"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
