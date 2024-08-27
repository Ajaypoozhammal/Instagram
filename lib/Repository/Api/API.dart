import 'dart:convert';



import 'package:http/http.dart';


import '../ModelClass/InstagramModel.dart';
import 'Api client.dart';




class InstagramApi {
  ApiClient apiClient = ApiClient();


  Future<InstagramModel> getInstagram() async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/info?username_or_id_or_url=_ajay._.p';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return InstagramModel.fromJson(jsonDecode(response.body));
  }
}