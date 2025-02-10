import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:garments_niyog/helpers/hex_color.dart';
import 'package:garments_niyog/helpers/route.dart';
import 'package:garments_niyog/pages/job_application_three.dart';
import 'package:get/get.dart';

import '../helpers/k_log.dart';

class JobApplicationTwoPage extends StatelessWidget {
  const JobApplicationTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Job Application',
          style: TextStyle(fontSize: 18),
        ),
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            back();
          },
          child: Image.asset('assets/icon/arrow.png'),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  kLog("Taped");
                  push(JobApplicationThree());
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
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Manager',
                      style:
                          TextStyle(color: hexToColor('#176F84'), fontSize: 18),
                    ),
                    Text(
                      'Company',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Add CV',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DottedBorder(
                  strokeWidth: 1, // Border width
                  dashPattern: [6, 3], // Length of dashes and gaps
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  color: hexToColor('#7EC7D8'),

                  child: Container(
                    height: 250,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: hexToColor('#E9F5F8'),
                      // color: hexToColor('#7EC7D8'),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset('assets/icon/drive.png'),
                            Text('Upload from mobile'),
                            Text('Supported formats : pdf,docx (max 2mb)'),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'or',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 100,
                              width: 280,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icon/google.png'),
                                  Text(
                                    'Upload from Google Drive',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
