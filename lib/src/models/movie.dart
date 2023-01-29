class Movie {
  final String image;
  final String title;
  final DateTime date;
  final String description;

  const Movie({
    required this.image,
    required this.title,
    required this.date,
    required this.description,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      image: json["poster_path"],
      title: json["title"],
      date: DateTime.parse(json["release_date"]),
      description: json["overview"],
    );
  }
  @override
  String toString() {
    return "title : $title | date : $date | image : $image | description : $description";
  }
}