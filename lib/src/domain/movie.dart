import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Movie {
  final String imageURL;
  final String title;
  final DateTime date;
  final String description;

  const Movie({
    required this.imageURL,
    required this.title,
    required this.date,
    required this.description,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
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
    return "title : $title | date : $date | imageURL : $imageURL | description : $description";
  }
}