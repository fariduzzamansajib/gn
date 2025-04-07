import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/text_field_input.dart';
import '../helpers/hex_color.dart';
import '../helpers/route.dart';
import 'job_details_page.dart';

class JobSearchPage extends StatelessWidget {
  const JobSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Search Job ',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              // padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '10 result macthing',
                    style: TextStyle(fontSize: 18),
                  ),
                  Image.asset('assets/icon/shorting.png'),
                ],
              ),
            ),
            SizedBox(
              height: 600.0, // Added fixed height
              child: ListView.builder(
                physics: BouncingScrollPhysics(), // Changed physics
                scrollDirection: Axis.vertical,
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10), // Added margin
                    width: Get.width,
                    height: 210,
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
                            color: hexToColor('#F6F6F6'),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: hexToColor('#A4D7E4'),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Production Manager',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text('Company'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.people_alt),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Deadline'),
                                                ],
                                              ),
                                              Text('13 Dec, 2024'),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                      Icons.lock_clock_rounded),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Location'),
                                                ],
                                              ),
                                              Text('Dhaka'),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.rounded_corner),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Vacancy'),
                                                ],
                                              ),
                                              Text('4'),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                      Icons.lock_clock_rounded),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Salary'),
                                                ],
                                              ),
                                              Text('BDT 24-30K '),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: hexToColor('#E9F5F8'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              push(JobDetailsPage());
                                            },
                                            style: ElevatedButton.styleFrom(
                                              minimumSize: Size.zero,
                                              // padding: EdgeInsets.zero,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16, vertical: 8),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              backgroundColor:
                                                  hexToColor('#A4D7E4'),
                                            ),
                                            child: Text(
                                              'Apply Now',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
