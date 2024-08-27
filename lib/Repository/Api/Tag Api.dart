import 'dart:convert';



import 'package:http/http.dart';
import 'package:instagram/Repository/ModelClass/PostModel.dart';
import 'package:instagram/Repository/ModelClass/TagModel.dart';

import 'Api client.dart';




class TagApi {
  ApiClient apiClient = ApiClient();


  Future<TagModel> getTag() async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/tagged?username_or_id_or_url=_ajay._.p';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return TagModel.fromJson(jsonDecode(response.body));
  }
}