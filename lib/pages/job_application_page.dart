import 'package:flutter/material.dart';
import 'package:garments_niyog/helpers/hex_color.dart';

import '../helpers/k_log.dart';
import '../helpers/route.dart';
import 'job_application_two_page.dart';

class JobApplicationPage extends StatelessWidget {
  const JobApplicationPage({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Manager',
                style: TextStyle(color: hexToColor('#176F84'), fontSize: 18),
              ),
              Text(
                'Company',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 30,
                          height: 30,
                          color: Colors.green, // Background color
                          child: Center(
                            child: Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('CV'),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 30,
                          height: 30,
                          color: Colors.blue, // Background color
                          child: Center(
                            child: Text(
                              '2',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Contact info'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: ClipOval(
                          child: Container(
                            width: 28,
                            height: 28,
                            color: const Color.fromARGB(
                                255, 221, 220, 220), // Background color
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Submit'),
                    ],
                  ),
                ],
              ),
              Text(
                'Contact Information',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Full Name'),
              TextFormField(
                cursorColor: Colors.blue, // Cursor color
                decoration: InputDecoration(
                  hintText: 'Type your name',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Default border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Focused border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Enabled border color
                  ),
                ),
                style: TextStyle(color: Colors.black), // Text color
                selectionControls:
                    MaterialTextSelectionControls(), // Ensures selection color applies
              ),
              SizedBox(
                height: 15,
              ),
              Text('Email'),
              TextFormField(
                cursorColor: Colors.blue, // Cursor color
                decoration: InputDecoration(
                  hintText: 'Type you email address',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Default border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Focused border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Enabled border color
                  ),
                ),
                style: TextStyle(color: Colors.black), // Text color
                selectionControls:
                    MaterialTextSelectionControls(), // Ensures selection color applies
              ),
              SizedBox(
                height: 15,
              ),
              Text('Phone Number'),
              TextFormField(
                cursorColor: Colors.blue, // Cursor color
                decoration: InputDecoration(
                  hintText: 'Type your phone number ',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Default border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Focused border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Enabled border color
                  ),
                ),
                style: TextStyle(color: Colors.black), // Text color
                selectionControls:
                    MaterialTextSelectionControls(), // Ensures selection color applies
              ),
              SizedBox(
                height: 15,
              ),
              Text('Expected Salary'),
              TextFormField(
                cursorColor: Colors.blue, // Cursor color
                decoration: InputDecoration(
                  hintText: 'Type your expected salary ',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Default border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Focused border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Enabled border color
                  ),
                ),
                style: TextStyle(color: Colors.black), // Text color
                selectionControls:
                    MaterialTextSelectionControls(), // Ensures selection color applies
              ),
              SizedBox(
                height: 15,
              ),
              Text('Linkdin Profile'),
              TextFormField(
                cursorColor: Colors.blue, // Cursor color
                decoration: InputDecoration(
                  hintText: 'Type the URL of your linkedin profile',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Default border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // Focused border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blue), // Enabled border color
                  ),
                ),
                style: TextStyle(color: Colors.black), // Text color
                selectionControls:
                    MaterialTextSelectionControls(), // Ensures selection color applies
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: ElevatedButton(
                  onPressed: () {
                    kLog("Taped");
                    push(JobApplicationTwoPage());
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
                    ' Next ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
