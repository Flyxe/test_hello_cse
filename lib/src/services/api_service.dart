import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/movie.dart';

class ApiService {
  static String baseUrl = 'https://api.themoviedb.org/3';
  static String moviesEndpoint = '/trending/all/day?api_key=';
  static String apiKey = '64367ea9be18cde3c1d2e4fc7744732d';

  static String testLangue = "https://api.themoviedb.org/3/movie/76341?api_key=64367ea9be18cde3c1d2e4fc7744732d&language=fr";
  //api_key=64367ea9be18cde3c1d2e4fc7744732d
  static String testLangue2 = "https://api.themoviedb.org/3/configuration/languages?api_key=64367ea9be18cde3c1d2e4fc7744732d";

  Future<List<Movie>?> getMovies() async {
    try {
      var url = Uri.parse(baseUrl + moviesEndpoint + apiKey + "&language=fr");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        //List<Movie> _model = Movie.fromJson(response.body);
        //return _model;
        print("réponse :  $response");
        log("réponse body :  ${response.body}");
        print("réponse status code:  ${response.statusCode}");

      }
    } catch (e) {
      log(e.toString());
    }
  }
  Future<List<Movie>?> testingLanguage() async {
    try {
      var url = Uri.parse(testLangue);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        //List<Movie> _model = Movie.fromJson(response.body);
        //return _model;
        print("réponse :  $response");
        print("réponse body :  ${response.body}");
        print("réponse status code:  ${response.statusCode}");

      }
    } catch (e) {
      log(e.toString());
    }
  }
}

  