import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Repository/ModelClass/FollowersModel.dart';

import 'Block/FollowersBloc/followers_bloc.dart';
import 'UI/Screen4.dart';

class Screen2 extends StatefulWidget {
  final String Name;
  final String Profilepic;

  const Screen2({super.key, required this.Name, required this.Profilepic});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  late FollowersModel data5;

  @override
  void initState() {
    BlocProvider.of<FollowersBloc>(context).add(FetchFollowers(name: widget.Name));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
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
                padding: const EdgeInsets.only(
                  right: 250,
                ),
                child: Text(
                  'All followers',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16.24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 700,
                child: BlocBuilder<FollowersBloc, FollowersState>(
                  builder: (context, state) {
    if (state is FollowersBlocLoading){
    print("loading");
    return Center(
    child: CircularProgressIndicator(),
    );}
    if (state is FollowersBlocError) {
    print("error");
    return Center(

    child: Text("Error"),
    );
    }
    if (state is FollowersBlocLoaded) {
    print("loaded");
    data5 = BlocProvider.of<FollowersBloc>(context)
        .followersModel;
                    return ListView.separated(
                      itemCount: data5.data!.items!.length,
                      itemBuilder: (context, position) {
                        return GestureDetector(onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen4(Name: data5.data!.items![position].username.toString())));} ,
                          child: Container(
                            height: 50.h,
                            color: Colors.white,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 40.r,
                                  backgroundImage: NetworkImage(data5.data!.items![position].profilePicUrl.toString())
                                ),

                                SizedBox(width: 50.w,
                                  child: Text(data5.data!.items![position].fullName.toString(),

                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      fontSize: 13.24.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 150.w,
                                ),
                                Container(
                                  width: 80.37.w,
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
                                        fontSize: 10.05,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.black,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10.h,
                        );
                      },
                    );
                  }
                    else {
                    return SizedBox();
                    }
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
