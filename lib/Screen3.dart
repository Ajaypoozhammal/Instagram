import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screen1.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen1()));
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
                          width: 90.37.w,
                          height: 33.25.h,
                          decoration: ShapeDecoration(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.73),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Following',
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
    );
  }
}
