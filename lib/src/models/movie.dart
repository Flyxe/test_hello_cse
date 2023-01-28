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
    print("Json reçu :  $json");
    return Movie(
      image: "",
      title: "",
      date: DateTime.now(),
      description: "",
    );
  }
}