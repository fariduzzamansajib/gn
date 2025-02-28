import 'package:flutter/material.dart';

import '../helpers/hex_color.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.settings,
                  size: 34,
                ),
              ],
            ),
            Row(
              spacing: 20,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: hexToColor('#E9F5F8'),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 1, color: Colors.blue)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name"),
                    Text("Phone Number 0125856875"),
                  ],
                ),
              ],
            ),
            ExpansionTile(
              collapsedShape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Adds border in collapsed state
                borderRadius: BorderRadius.circular(5),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Removes border when expanded
              ),
              trailing: Icon(Icons.edit),
              title: Text("ব্যক্তিওগত তথ্য"),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    spacing: 20,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম ইংরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম বাংলায় লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার ইমেইল'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('ফোন নাম্বার'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('বাবার নাম বাংলায় লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('বাবার নাম ইরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('মায়ের নাম ইরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('মায়ের নাম ইরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('জাতীয়তা বাংলায়'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('জাতীয়তা ইরেজিতে'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('রক্তের গ্রুপ বাংলায়'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('রক্তের গ্রুপ ইরেজিতে'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('NID নাম্বার'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('জন্ম তারিখ'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('সিভি'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text('প্রোফাইল পিকচার'),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Back',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ExpansionTile(
              collapsedShape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Adds border in collapsed state
                borderRadius: BorderRadius.circular(5),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Removes border when expanded
              ),
              trailing: Icon(Icons.edit),
              title: Text("শিক্ষাগত তথ্য"),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    spacing: 20,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম ইংরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম বাংলায় লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Back',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ExpansionTile(
              collapsedShape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Adds border in collapsed state
                borderRadius: BorderRadius.circular(5),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Removes border when expanded
              ),
              trailing: Icon(Icons.edit),
              title: Text(" অভিজ্ঞতা "),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    spacing: 20,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম ইংরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম বাংলায় লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Back',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ExpansionTile(
              collapsedShape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Adds border in collapsed state
                borderRadius: BorderRadius.circular(5),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  width: 1,
                  color: Colors.blue,
                ), // Removes border when expanded
              ),
              trailing: Icon(Icons.edit),
              title: Text(" দক্ষতা "),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    spacing: 20,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম ইংরেজিতে লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('আপনার নাম বাংলায় লিখুন'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text('Enter your Name'),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Save',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Change background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5), // Change border radius
                                ),
                              ),
                              child: Text(
                                'Back',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Card(
            //   color: hexToColor('#E9F5F8'),

            //   elevation: 4, // Shadow effect
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(6), // Rounded corners
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(10.0),
            //     child: Container(
            //       width: Get.width,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Text('data'),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
