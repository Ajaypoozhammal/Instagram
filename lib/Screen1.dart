import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import 'Block/instagram_bloc.dart';

import 'Repository/ModelClass/InstagramModel.dart';

import 'Screen2.dart';
import 'Screen3.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late InstagramModel data;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(70.r)),
                      prefixIcon: Icon(Icons.search))),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
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
                            fontSize: 14.64.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Posts',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 12.24.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Screen2()));
                      },
                      child: Column(
                        children: [
                          Text(
                            '3680',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14.64.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Followers',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 12.24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Screen3()));
                      },
                      child: Column(
                        children: [
                          Text(
                            '280',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14.64.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Following',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 12.24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  'Name',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 11.64,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Local business',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Color(0xFF8E8E8E),
                    fontSize: 10.05.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'www.website.com',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 10.20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
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
                            fontSize: 12.05,
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
                            fontSize: 12.05,
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
                            fontSize: 12.05,
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
                padding: const EdgeInsets.only(left: 10, top: 30),
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
                            fontSize: 9.91,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
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
                            fontSize: 9.91,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
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
                            fontSize: 9.91,
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerHeight: 0,
                        indicatorColor: Colors.black,
                        labelColor: Colors.white,
                        tabs: [
                          Tab(
                            icon: Icon(
                              Icons.dashboard,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.account_box_outlined,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      width: 320,
                      child: TabBarView(
                        children: [
                          SizedBox(
                            height: 500.h,
                            width: 300.w,
                            child: BlocBuilder<InstagramBloc, InstagramState>(
                                builder: (context, state) {
                                  if (state is InstagramBlocLoading)
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  if (state is InstagramBlocError) {
                                    return Center(
                                      child: Text("Error"),
                                    );
                                  }
                                  if (state is InstagramBlocLoaded) {
                                    data = BlocProvider
                                        .of<InstagramBloc>(context)
                                        .instagramModel;

                                    return GridView.count(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 5.0,
                                      mainAxisSpacing: 5.0,
                                      shrinkWrap: true,
                                      children: List.generate(
                                        data.items!.length,
                                            (index) {
                                          return Container(
                                            height: 30.h,
                                            color: Colors.grey,
                                            child: Image.asset("asset/a.png"),
                                          );
                                        },
                                      ),
                                    );
                                  }
                                  else {
                                    return SizedBox();
                                  }
                                }
                            ),
                          ),
                          Container(
                            color: Colors.red,
                            child: SizedBox(
                              height: 500.h,
                              width: 300.w,
                              child: BlocBuilder<InstagramBloc, InstagramState>(
                                builder: (context, state) {
                                  if (state is InstagramBlocLoading)
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  if (state is InstagramBlocError) {
                                    return Center(
                                      child: Text("Error"),
                                    );
                                  }
                                  if (state is InstagramBlocLoaded) {
                                    data = BlocProvider
                                        .of<InstagramBloc>(context)
                                        .instagramModel;


                                    return GridView.count(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 5.0,
                                      mainAxisSpacing: 5.0,
                                      shrinkWrap: true,
                                      children: List.generate(
                                        10,
                                            (index) {
                                          return Container(
                                            height: 30.h,
                                            color: Colors.grey,
                                            child: Image.asset("asset/a.png"),
                                          );
                                        },
                                      ),

                                    );

                                  }
                                  else {
                                  return SizedBox();
                                  }
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
