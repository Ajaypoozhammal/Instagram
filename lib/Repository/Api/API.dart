import 'dart:convert';



import 'package:http/http.dart';


import '../ModelClass/InstagramModel.dart';
import 'Api client.dart';




class InstagramApi {
  ApiClient apiClient = ApiClient();


  Future<InstagramModel> getInstagram() async {
    String trendingpath = 'https://instagram-scraper-2022.p.rapidapi.com/ig/reels_posts/?id_user=25025320';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return InstagramModel.fromJson(jsonDecode(response.body));
  }
}