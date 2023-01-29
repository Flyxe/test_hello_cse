import 'package:intl/intl.dart';

class Movie {
  final int id;
  final String imageURL;
  final String title;
  final DateTime date;
  final String description;


  static int incrementId = 0;

  const Movie({
    required this.id,
    required this.imageURL,
    required this.title,
    required this.date,
    required this.description,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id : incrementId++, 
      imageURL: 'https://image.tmdb.org/t/p/original${json["poster_path"]}',
      title: json["title"],
      date: DateTime.parse(json["release_date"]),
      description: json["overview"],
    );
  }

  String frenchDate(){
    return DateFormat('d MMMM yyyy').format(date);
  }

  @override
  String toString() {
    return "id : $id title : $title | date : $date | imageURL : $imageURL | description : $description";
  }
}