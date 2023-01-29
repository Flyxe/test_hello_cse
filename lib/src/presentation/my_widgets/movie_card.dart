import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../constants.dart';
import '../../domain/movie.dart';
import 'favorite_button.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key, required this.movie});
  final Movie movie;
  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey[200],
      margin: const EdgeInsets.fromLTRB(5, 15, 5, 0),
      child: SizedBox(
        width: double.infinity,
        height: 135,
        child: Row(
          children: [
            const SizedBox(width: 10),
            /*Image.network(movie.imageURL,
                  fit:BoxFit.fill),
                  */
            CachedNetworkImage(
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl: widget.movie.imageURL,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.movie.title, style: AppFonts.title, textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 2),
                            Text(widget.movie.frenchDate(), style: AppFonts.date, textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,),
                            const SizedBox(height: 10),
                          ]
                        ),),
                        FavoriteButton(movie: widget.movie)
                      ],
                    ),
                    Text(widget.movie.description, style: AppFonts.description, textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,maxLines: 6),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}