import 'dart:convert';



import 'package:http/http.dart';
import 'package:instagram/Repository/ModelClass/PostModel.dart';

import 'Api client.dart';




class Postapi {
  ApiClient apiClient = ApiClient();


  Future<PostModel> getInstagram(String name) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1.2/posts?username_or_id_or_url=$name';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return PostModel.fromJson(jsonDecode(response.body));
  }
}