import 'package:flutter/material.dart';
import 'package:garments_niyog/helpers/route.dart';
import 'package:garments_niyog/pages/job_search_page.dart';
import 'package:get/get.dart';

import '../components/text_field_input.dart';
import '../helpers/hex_color.dart';
import 'job_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final List<String> images = [
  //   'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //   'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  //   'https://images.pexels.com/photos/1133957/pexels-photo-1133957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  // ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     spacing: 10,
              //     children: [
              //       Expanded(
              //         child: Container(
              //           height: 100,
              //           decoration: BoxDecoration(
              //             color: hexToColor('#E2D7F8'),
              //             borderRadius: BorderRadius.circular(8),
              //             // border: Border.all(
              //             //   color: Colors.white, // Border color
              //             //   width: 4, // Border width
              //             // ),
              //           ),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: Colors.amber,
              //                 radius: 17,
              //                 child: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   radius: 15,
              //                   child: Icon(Icons.abc),
              //                 ),
              //               ),
              //               Text(
              //                 '2455K',
              //                 style: TextStyle(
              //                     fontSize: 18, fontWeight: FontWeight.bold),
              //               ),
              //               Text('data'),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           height: 100,
              //           decoration: BoxDecoration(
              //             color: hexToColor('#D3F2CA'),
              //             borderRadius: BorderRadius.circular(8),
              //             // border: Border.all(
              //             //   color: Colors.white, // Border color
              //             //   width: 4, // Border width
              //             // ),
              //           ),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: Colors.amber,
              //                 radius: 17,
              //                 child: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   radius: 15,
              //                   child: Icon(Icons.abc),
              //                 ),
              //               ),
              //               Text(
              //                 '2455K',
              //                 style: TextStyle(
              //                     fontSize: 18, fontWeight: FontWeight.bold),
              //               ),
              //               Text('data'),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           height: 100,
              //           decoration: BoxDecoration(
              //             color: hexToColor('#CDEEFB'),
              //             borderRadius: BorderRadius.circular(8),
              //             // border: Border.all(
              //             //   color: Colors.white, // Border color
              //             //   width: 4, // Border width
              //             // ),
              //           ),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: Colors.amber,
              //                 radius: 17,
              //                 child: CircleAvatar(
              //                   backgroundColor: Colors.white,
              //                   radius: 15,
              //                   child: Icon(Icons.abc),
              //                 ),
              //               ),
              //               Text(
              //                 '2455K',
              //                 style: TextStyle(
              //                     fontSize: 18, fontWeight: FontWeight.bold),
              //               ),
              //               Text('data'),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(height: 60),
              Container(
                color: const Color.fromARGB(255, 248, 245, 245),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                push(JobSearchPage());
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  color: hexToColor('#E2D7F8'),
                                  borderRadius: BorderRadius.circular(8),
                                  // border: Border.all(
                                  //   color: Colors.white, // Border color
                                  //   width: 4, // Border width
                                  // ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      radius: 17,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 15,
                                        child: Icon(Icons.abc),
                                      ),
                                    ),
                                    Text(
                                      'Company',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Text('data'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: hexToColor('#D3F2CA'),
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //   color: Colors.white, // Border color
                                //   width: 4, // Border width
                                // ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 17,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(Icons.abc),
                                    ),
                                  ),
                                  Text(
                                    'Job Location',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Text('data'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: hexToColor('#CDEEFB'),
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //   color: Colors.white, // Border color
                                //   width: 4, // Border width
                                // ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 17,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(Icons.abc),
                                    ),
                                  ),
                                  Text(
                                    'Save Jobs',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Text('data'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: hexToColor('#E2D7F8'),
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //   color: Colors.white, // Border color
                                //   width: 4, // Border width
                                // ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 17,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(Icons.abc),
                                    ),
                                  ),
                                  Text(
                                    'OT Calculator',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Text('data'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: hexToColor('#D3F2CA'),
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //   color: Colors.white, // Border color
                                //   width: 4, // Border width
                                // ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 17,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(Icons.abc),
                                    ),
                                  ),
                                  Text(
                                    'Training',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Text('data'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: hexToColor('#CDEEFB'),
                                borderRadius: BorderRadius.circular(8),
                                // border: Border.all(
                                //   color: Colors.white, // Border color
                                //   width: 4, // Border width
                                // ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 17,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(Icons.abc),
                                    ),
                                  ),
                                  Text(
                                    'My CV',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // Text('data'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category'),
                    Text('View All'),
                  ],
                ),
              ),

              SizedBox(
                height: 120.0, // Added fixed height
                child: ListView.builder(
                  physics: BouncingScrollPhysics(), // Changed physics
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 5), // Added margin
                      width: 90.0, // Set a finite width
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: hexToColor('#CDEEFB'),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 17,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 15,
                                          child: Image.asset(
                                              'assets/icon/job.png'),
                                        ),
                                      ),
                                      Text(
                                        'Production \nSupervisor',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Job Listing '),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              ListView.builder(
                physics: BouncingScrollPhysics(), // Changed physics
                scrollDirection: Axis.vertical,
                itemCount: 5,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10), // Added margin
                    width: Get.width,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: hexToColor('#CDEEFB'),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  spacing: 5,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 75,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Textile Engineer',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Company Name',
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                        // SizedBox(
                                        //   height: 6,
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            push(JobDetailsPage());
                                          },
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size.zero,
                                            // padding: EdgeInsets.zero,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 7, vertical: 3),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                            ),
                                            backgroundColor: Colors.white,
                                          ),
                                          child: Text(
                                            'Apply Now',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  spacing: 10,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text('Locations'),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text('Date'),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text('Salary'),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text('Vacancy'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
            color: Colors.white,
            child: Row(
              spacing: 20,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: TextFieldInput(
                      hintText: 'Search',
                      prefixIcon: Image.asset('assets/icon/search.png'),
                      fillColor: hexToColor('#F6F6F6'),
                      borderRadius: 4,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                Material(
                  color: hexToColor('#F6F6F6'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image.asset('assets/icon/filter.png')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
