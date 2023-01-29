import 'package:flutter/material.dart';
import 'package:test_hello_cse/src/data/api_service.dart';

import '../domain/movie.dart';

class MoviesNotifier extends ChangeNotifier {
  List<Movie>? _movies;
  static final List<Movie> _favorites = [];

  List<Movie>? get all => _movies;
  List<Movie> get favorites => _favorites;

  MoviesNotifier(){
    loadMovies();
  }

  Future<void> loadMovies() async {
    _movies = await ApiService().getMovies();
    notifyListeners();
  }

  void favoritingMovie(Movie movie) {
    if(_favorites.contains(movie)){
      _favorites.remove(movie);
    }else{
      _favorites.add(movie);
    }
    print("favorite ${_favorites.length}");

    notifyListeners();
  }

}