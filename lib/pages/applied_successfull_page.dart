import 'package:flutter/material.dart';
import 'package:garments_niyog/helpers/hex_color.dart';
import 'package:garments_niyog/helpers/k_log.dart';
import 'package:garments_niyog/helpers/route.dart';
import 'package:garments_niyog/pages/job_application_page.dart';

class AppliedSuccessfullPage extends StatelessWidget {
  const AppliedSuccessfullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/sucess.png'),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Text(
            'Applied Successfully',
            style: TextStyle(fontSize: 26, color: hexToColor('#176F84')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: ElevatedButton(
              onPressed: () {
                kLog("Taped");
                push(JobApplicationPage());
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40),

                // padding: EdgeInsets.zero,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                backgroundColor: hexToColor('#47AEC7'),
              ),
              child: Text(
                'Return Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
