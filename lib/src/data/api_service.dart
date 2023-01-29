import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../domain/movie.dart';

class ApiService {
  static String baseUrl = 'https://api.themoviedb.org/3';
  static String moviesEndpoint = '/movie/';
  static String parameters = '?api_key=64367ea9be18cde3c1d2e4fc7744732d&language=fr';

  static String search = "https://api.themoviedb.org/3/search/movie?api_key=64367ea9be18cde3c1d2e4fc7744732d&language=fr&query=mission cléopatre&page=1&include_adult=false";
  
  List<int> moviesID = [4922, 550, 1555, 41211, 157336, 1366, 366564, 761, 15152, 2899];
  
  Future<List<Movie>?> getMovies() async {
    try {
      List<Movie> movies = [];
      for (int i in moviesID){
        var url = Uri.parse(baseUrl + moviesEndpoint + i.toString() + parameters);
        var response = await http.get(url);
        if (response.statusCode == 200) {
          movies.add(Movie.fromJson(jsonDecode(response.body)));
        }
      }
      return movies;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
  /*Future<List<Movie>?> searchMovie() async {
    try {
      var url = Uri.parse(search);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        print("réponse :  $response");
        print("réponse body :  ${response.body}");
        print("réponse status code:  ${response.statusCode}");

      }
    } catch (e) {
      log(e.toString());
    }
  }*/
}

  