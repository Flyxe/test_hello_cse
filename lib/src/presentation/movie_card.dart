import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../domain/movie.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key, required Movie movie});

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.grey[500],
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: <Widget>[
            const Text("image"),
            Column(
              children: const <Widget>[
                const Text("Title"),
                const Text("Date"),
                const Text("Description"),
              ]
            ),
          ],
        ),
      ),
    );
  }
}