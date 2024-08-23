import 'dart:convert';



import 'package:http/http.dart';


import '../ModelClass/HighlightModel.dart';
import '../ModelClass/InstagramModel.dart';
import 'Api client.dart';




class Highlightapi {
  ApiClient apiClient = ApiClient();


  Future<HighlightModel> getInstagram() async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/highlights?username_or_id_or_url=_ajay._.p';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return HighlightModel.fromJson(jsonDecode(response.body));
  }
}