import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: const Text(
          'Honda Activa 110cc',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Jost',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
                        child: Image.asset("assets/scooty.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 270,
                    top: 15,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 10.w,
                            height: 10.h,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            "Online",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120.h,
                    left: 330.w,
                    child: Image.asset('assets/arrow.png'),
                  ),
                  Positioned(
                    left: 170.w,
                    top: 180.h,
                    child: Container(
                      width: 70.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(6.r),
                          right: Radius.circular(6.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 12.w,
                            height: 12.h,
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 12.w,
                            height: 12.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 12.w,
                            height: 12.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFC4C4C4),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 48.w,
                  ),
                  Text(
                    "Honda Activa 110cc",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  const Icon(
                    Icons.star,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 4.w),
                  const Text(
                    "4.3",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "(44 rides)",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SizedBox(
                    width: 48.w,
                  ),
                  Text(
                    "MH 12 KP 3431",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Image.asset("assets/tick.png"),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SizedBox(
                    width: 48.w,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          side: BorderSide(color: Colors.black),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        // Add your onPressed callback here
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Vehicle Preview",
                            style: TextStyle(
                              fontFamily: "Jost",
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  SizedBox(
                    width: 40.w,
                  ),
                  Switch(
                    value: true,
                    activeColor: Color(0xFF00BC8E),
                    onChanged: (bool value) {},
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "Accepting Rides",
                    style: TextStyle(
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Container(
                height: 1.h,
                color: Color(0xFFC4C4C4),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Text(
                  "SETTINGS",
                  style: TextStyle(
                    color: const Color(0xff7C7C7C),
                    fontFamily: "Jost",
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 20.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 500.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              " ₹",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w500,
                                fontSize: 22.sp,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Pricing",
                              style: TextStyle(
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/barrow.png"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 20.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 500.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 8.w),
                            Text(
                              "Pickup location",
                              style: TextStyle(
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/barrow.png"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 20.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 500.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.camera_alt),
                            SizedBox(width: 8.w),
                            Text(
                              "Vehicle Photos",
                              style: TextStyle(
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/barrow.png"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 20.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 500.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.notes_outlined),
                            SizedBox(width: 8.w),
                            Text(
                              "Vehicle Description",
                              style: TextStyle(
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/barrow.png"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 20.w),
                child: InkWell(
                  onTap: () {
                    // Add your onTap callback here
                  },
                  child: Container(
                    width: 500.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            SizedBox(width: 8.w),
                            Text(
                              "Set availability",
                              style: TextStyle(
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                            "assets/barrow.png"), // Replace with your image icon
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 20.w),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 500.w,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.restore_page),
                            SizedBox(width: 8.w),
                            Text(
                              "Notes for pickup",
                              style: TextStyle(
                                fontFamily: "Jost",
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                        Image.asset("assets/barrow.png"),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Remove this vehicle",
                    style: TextStyle(
                      color: Color(0xFFBA0808),
                      fontFamily: "Jost",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.51.sp,
                    ),
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
