import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Block/FollowingBloc/following_bloc.dart';
import 'package:instagram/Repository/ModelClass/FollowingModel.dart';

import 'Screen1.dart';
import 'UI/Screen4.dart';

class Screen3 extends StatefulWidget {
  final String name;
  final String profilepic;

  const Screen3({super.key, required this.name, required this.profilepic});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  late FollowingModel data4;
  @override
  void initState() {
    BlocProvider.of<FollowingBloc>(context).add(FetchFollowing(name:widget.name));



    // TODO: implement initState
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
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
                child: BlocBuilder<FollowingBloc, FollowingState>(
  builder: (context, state) {
    if (state is FollowingBlocLoading){
    print("loading");
    return Center(
    child: CircularProgressIndicator(),
    );}
    if (state is FollowingBlocError) {
    print("error");
    return Center(
    child: Text("Error"),
    );
    }
    if (state is FollowingBlocLoaded) {
    print("loaded");
    data4 = BlocProvider.of<FollowingBloc>(context)
        .followingModel;
    return ListView.separated(
                  itemCount: data4.data!.items!.length,
                  itemBuilder: (context, position) {

                    return GestureDetector(onTap:(){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen4(Name: data4.data!.items![position].username.toString())));} ,
                      child: Container(
                        height: 50.h,
                        color: Colors.white,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40.r,
                              backgroundImage:NetworkImage(data4.data!.items![position].profilePicUrl.toString()),
                            ),
                            SizedBox(width: 150,
                              child: Text(
                                data4.data!.items![position].fullName.toString(),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 13.24.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
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
                                  'Following',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 10.05,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),SizedBox(width: 10.w,),
                            Icon(Icons.more_vert_rounded,color: Colors.black,size: 30,)
                          ],
                        ),
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 10,); },
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
