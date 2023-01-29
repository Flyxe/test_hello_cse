import 'package:flutter/material.dart';
import 'package:test_hello_cse/src/presentation/my_widgets/movie_card.dart';
import 'package:provider/provider.dart';

import '../application/movies_provider.dart'; 


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesNotifier>(
      builder: (context, movies, child) {
        if(movies.all != null){
          return ListView.builder(
            itemCount: movies.all!.length,
            itemBuilder: (context, index){      
              return MovieCard(movie: movies.all![index]);
            },  
          );
        }else{
          return const CircularProgressIndicator();
        }
      },
    );
  }
}