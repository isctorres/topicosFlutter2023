import 'dart:convert';

import 'package:http/http.dart' as http;

class PopularApi {

  final url = Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=&language=es-MX&page=1');

  Future<??> getAllPopular() async {
    var res = await http.get(url);
    if( res.statusCode == 200 ){
      var jsonResult = jsonDecode(res.body)['results'] as List;
      jsonResult.map((movie) => null)
    }
  }
}