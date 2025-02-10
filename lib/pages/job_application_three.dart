import 'package:flutter/material.dart';

import '../helpers/hex_color.dart';
import '../helpers/k_log.dart';
import '../helpers/route.dart';
import 'applied_successfull_page.dart';

class JobApplicationThree extends StatelessWidget {
  const JobApplicationThree({super.key});

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
                  push(AppliedSuccessfullPage());
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
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
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
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Details',
                      style: TextStyle(fontSize: 20),
                    ),
                    ClipOval(
                      child: Container(
                        height: 42,
                        width: 42,
                        color: hexToColor('#E9F5F8'),
                        child: Image.asset('assets/icon/edit.png'),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Kindly check cross check your provided information.',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'Courtney Henry',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'tanya.hill@example.com',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '(205) 555-0100',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expected Salary',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      '854.08',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Linkedin Profilee',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'http://\n www.warephase.com',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
