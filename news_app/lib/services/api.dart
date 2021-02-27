import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/newsmodel.dart';
import 'package:news_app/utils/constants.dart';

class Api {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsmodel;

  try{
    var response = await client.get(Constants.news_url);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonmap=json.decode(jsonString);
      newsmodel= NewsModel.fromJson(jsonmap);
    }}
    catch(Exception) {
      return newsmodel;
    }
    return newsmodel;
  }
}
