import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/core/config/constants.dart';
import '../models/popular.dart';

class ApiManager {

  static Future<List<PopularModel>> fetchPopularData() async {
    var url = Uri.https(
      Constants.baseUrl,
      "/3/movie/popular",
      {
        "apiKey": Constants.apiKey,
      },
    );

    final response = await http.get(url);

    List<PopularModel> popularDataList = [];

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var popularList = data["results"] as List;

      for (var element in popularList) {
        popularDataList.add(PopularModel.fromJson(element));
      }
      return popularDataList;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
