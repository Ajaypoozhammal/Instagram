import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/Block/FollowingBloc/following_bloc.dart';
import 'package:instagram/Block/HighilightBloc/highlight_bloc.dart';
import 'package:instagram/Block/PostBloc/post_bloc.dart';
import 'package:instagram/Repository/ModelClass/FollowingModel.dart';
import 'package:instagram/Repository/ModelClass/HighlightModel.dart';
import 'package:instagram/Repository/ModelClass/PostModel.dart';
import 'package:instagram/Repository/ModelClass/TagModel.dart';

import 'Block/MainBlock/instagram_bloc.dart';

import 'Block/TagBloc/tag_bloc.dart';
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
  late HighlightModel data1;
  late PostModel data2;
  late TagModel data3;




  @override
  void initState() {


    BlocProvider.of<PostBloc>(context).add(FetchPost());
    BlocProvider.of<TagBloc>(context).add(FetchTag());


    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return Scaffold(appBar: AppBar(title: TextField(onSubmitted: (value){
      BlocProvider.of<InstagramBloc>(context).add(FetchInstagram(name: controller.text));
      BlocProvider.of<HighlightBloc>(context).add(FetchHighlight(name: controller.text));


    },controller:
        controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(70.r)),
            prefixIcon: Icon(Icons.search))),),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
              data = BlocProvider.of<InstagramBloc>(context).instagramModel;

              return Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40.r,
                          backgroundImage: NetworkImage(
                            data.data!.profilePicUrlHd
                                .toString(),)
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          children: [
                            Text(
                              data.data!.mediaCount.toString(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 15.64.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Posts',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 16.24.sp,
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Screen2( Name:  data.data!.fullName.toString(), Profilepic:data.data!.profilePicUrlHd.toString())));
                          },
                          child: Column(
                            children: [
                              Text(
                                data.data!.followerCount.toString(),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 15.64.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Followers',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 16.24.sp,
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
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Screen3(name:  data.data!.fullName.toString(), profilepic:data.data!.profilePicUrlHd.toString(),)));
                          },
                          child: Column(
                            children: [
                              Text(
                                data.data!.followingCount.toString(),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 15.64.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Following',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 16.sp,
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
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280),
                    child: Text(
                      data.data!.fullName.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 12.64,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      'Local business',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Color(0xFF8E8E8E),
                        fontSize: 13.05.sp,
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
                        fontSize: 13.20.sp,
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
                  SizedBox(height: 30.h,),
                  BlocBuilder<HighlightBloc, HighlightState>(
                    builder: (context, state) {
                      if (state is HighlightBlocLoading){
                        print("loading");
                        return Center(
                          child: CircularProgressIndicator(),
                        );}
                      if (state is HighlightBlocError) {
                        print("error");
                        return Center(
                          child: Text("Error"),
                        );
                      }
                      if (state is HighlightBlocLoaded) {
                        print("loaded");
                        data1 = BlocProvider.of<HighlightBloc>(context)
                            .highlightModel;

                        return
                          SizedBox(
                            width:double.infinity,height: 75.h,
                            child: ListView.separated(
                            itemCount:data1.data!.items!.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, position) {
                              return CircleAvatar(radius: 30,
                                backgroundImage:  NetworkImage(
                                  data1.data!.items![position].coverMedia!.croppedImageVersion!.url.toString(),
                                ),
                              );
                            },
                            separatorBuilder: (context, position) {
                              return SizedBox(
                                width: 1.w,
                              );
                            },
                                                    ),
                          );
                      } else {
                        return SizedBox();
                      }
                    },
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
                          width: double.infinity,
                          child: TabBarView(
                            children: [
                              Container(
                                width: double.infinity,
                                color: Colors.white,
                                child: SizedBox(
                                  height: 500.h,
                                  width: 300.w,
                                  child: BlocBuilder<PostBloc,
                                      PostState>(
                                    builder: (context, state) {
                                      if (state is PostBlocLoading)
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      if (state is PostBlocError) {
                                        return Center(
                                          child: Text("Error"),
                                        );
                                      }
                                      if (state is PostBlocLoaded) {
                                        data2 = BlocProvider.of<PostBloc>(
                                            context)
                                            .postModel;

                                        return GridView.count(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 5.0,
                                          mainAxisSpacing: 5.0,
                                          shrinkWrap: true,
                                          children: List.generate(
                                            data2.data!.items!.length,
                                                (index) {
                                              return Container(
                                                  height: 30.h,
                                                  color: Colors.grey,
                                                  child:
                                                  Image.network(data2.data!.items![index].imageVersions!.items![index].url.toString(),fit:BoxFit.cover,)
                                              );
                                            },
                                          ),
                                        );
                                      } else {
                                        return SizedBox();
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                child: SizedBox(
                                  height: 500.h,
                                  width: 300.w,
                                  child: BlocBuilder<TagBloc,
                                      TagState>(
                                    builder: (context, state) {
                                      if (state is TagBlocLoading)
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      if (state is TagBlocError) {
                                        return Center(
                                          child: Text("Error"),
                                        );
                                      }
                                      if (state is TagBlocLoaded) {
                                        data3 = BlocProvider.of<TagBloc>(
                                                context)
                                            .tagModel;

                                        return GridView.count(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 5.0,
                                          mainAxisSpacing: 5.0,
                                          shrinkWrap: true,
                                          children: List.generate(
                                            data3.data!.items!.length,
                                            (index) {
                                              return Container(
                                                height: 30.h,
                                                color: Colors.white,
                                                child:
                                                    Image.network(data3.data!.items![index]!.displayUrl.toString())
                                              );
                                            },
                                          ),
                                        );
                                      } else {
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
              );
            } else {
              return SizedBox();
            }
          }),
        ),
      ),
    );
  }
}
