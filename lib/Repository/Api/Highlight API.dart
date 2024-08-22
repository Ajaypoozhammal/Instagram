import 'dart:convert';



import 'package:http/http.dart';


import '../ModelClass/HighlightModel.dart';
import '../ModelClass/InstagramModel.dart';
import 'Api client.dart';




class Highlightapi {
  ApiClient apiClient = ApiClient();


  Future<HighlightModel> getInstagram() async {
    String trendingpath = 'https://instagram-scraper-2022.p.rapidapi.com/ig/highlights_tray/';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return HighlightModel.fromJson(jsonDecode(response.body));
  }
}