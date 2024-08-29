import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repository/ModelClass/FollowingModel.dart';

import '../ModelClass/FollowersModel.dart';
import '../ModelClass/HighlightModel.dart';
import '../ModelClass/InstagramModel.dart';
import 'Api client.dart';




class Followersapi {
  ApiClient apiClient = ApiClient();


  Future<FollowersModel> getFollowers(String name) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/followers?username_or_id_or_url=$name';
    var body = {
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return FollowersModel.fromJson(jsonDecode(response.body));
  }
}