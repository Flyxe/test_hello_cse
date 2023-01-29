import 'package:flutter/material.dart';
import 'package:test_hello_cse/src/domain/movie.dart';
import 'package:test_hello_cse/src/data/api_service.dart';
import 'package:test_hello_cse/src/presentation/movie_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Movie>?> futureMovies;

  @override
  void initState() {
    futureMovies = ApiService().getMovies();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>?>(
      future: futureMovies,
      builder: (context, snapshot) {
        if(!snapshot.hasData){
          const Text("ERREUR : aucune valeur n'a été retourné pour les films");
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }else{
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index){      
              return MovieCard(movie: snapshot.data![index]);
            },  
          );
          
          //Text(snapshot.data![1].title);
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}