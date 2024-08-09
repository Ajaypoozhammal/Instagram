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
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    prefixIcon: Icon(Icons.search))),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 40.r,
                      backgroundImage: AssetImage("asset/a.png")),
                  SizedBox(width: 20.w,),
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
                SizedBox(width: 20.w,),
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
                  SizedBox(width: 20.w,),
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
            SizedBox(height: 5.h,),
            Padding(
              padding: const EdgeInsets.only(right:310),
              child: Text(
                'Name',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 20.64,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
    Padding(
    padding: const EdgeInsets.only(right:300),
    child:
            Text(
              'Local business',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Color(0xFF8E8E8E),
                fontSize: 16.05.sp,
                fontWeight: FontWeight.w400,
              ),
            ),),
    Padding(
    padding: const EdgeInsets.only(right:300),
    child:
            Text(
              'www.website.com',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Color(0xFFD4E0ED),
                fontSize: 12.20.sp,
                fontWeight: FontWeight.w400,
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
