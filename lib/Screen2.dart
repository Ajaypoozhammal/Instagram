import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 40.w,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270, top: 30),
                child: Text(
                  'All followers',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 15.24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              SizedBox(
                height: 700,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, position) {
                    return Container(
                      height: 50.h,
                      color: Colors.white,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40.r,
                            backgroundImage: AssetImage("asset/a.png"),
                          ),SizedBox(width: 10.w),
                          Text(
                            'Name',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 13.24.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),SizedBox(width: 150.w,),
                          Container(
                            width: 60.37.w,
                            height: 33.25.h,
                            decoration: ShapeDecoration(
                              color: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.73),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Remove',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 12.05,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),SizedBox(width: 20.w,),
                          Icon(Icons.more_vert_rounded,color: Colors.black,size: 30,)
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
