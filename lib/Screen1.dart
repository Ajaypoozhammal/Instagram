import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      prefixIcon: Icon(Icons.search))),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 40.r,
                        backgroundImage: AssetImage("asset/a.png")),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        Text(
                          '129',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.64.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Posts',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 17.24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        Text(
                          '3680',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.64.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Followers',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 17.24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        Text(
                          '280',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.64.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Following',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 17.24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text(
                  'Name',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 15.64,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  'Local business',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Color(0xFF8E8E8E),
                    fontSize: 16.05.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  'www.website.com',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Color(0xFFD4E0ED),
                    fontSize: 12.20.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 112.37.w,
                      height: 33.25.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4192EF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.73),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Follow',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.05,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 112.37.w,
                      height: 33.25.h,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.73),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Message',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.05,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 112.37.w,
                      height: 33.25.h,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.73),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Email',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.05,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 30.w,
                      height: 30.25.h,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.73),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 40.r,
                            backgroundImage: AssetImage("asset/a.png")),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Highlight',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14.91,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 40.r,
                            backgroundImage: AssetImage("asset/a.png")),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Highlight',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14.91,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 40.r,
                            backgroundImage: AssetImage("asset/a.png")),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Highlight',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 14.91,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 60,
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    Icon(
                      Icons.account_box_outlined,
                      size: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500.h,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: List.generate(
                    10,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/a.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
