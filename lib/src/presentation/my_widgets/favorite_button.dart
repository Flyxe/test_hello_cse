import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_hello_cse/src/application/movies_provider.dart';

import '../../domain/movie.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key, required this.movie});
  final Movie movie;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Provider.of<MoviesNotifier>(context).favorites.contains(widget.movie) ? const Icon(Icons.favorite, color: Colors.red, size: 30,)
      : const Icon(Icons.favorite_border, color: Colors.red, size: 30,),

      onTap: () async {
        Provider.of<MoviesNotifier>(context, listen: false).favoritingMovie(widget.movie);
      },
    );
  }
}