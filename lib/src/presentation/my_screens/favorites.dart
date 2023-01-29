import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../application/movies_provider.dart';
import 'my_widgets/movie_card.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesNotifier>(
      builder: (context, movies, child) {
          return ListView.builder(
            itemCount: movies.favorites.length,
            itemBuilder: (context, index){      
              return MovieCard(movie: movies.favorites[index]);
            },  
          );
        }
      );
  }
}
