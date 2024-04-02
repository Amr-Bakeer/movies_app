class PopularModel {
  num? id;
  String? posterPath;
  String? title;
  String? releaseDate;

  PopularModel({
    required this.id,
    required this.posterPath,
    required this.title,
    required this.releaseDate,
  });

  factory PopularModel.fromJson(Map<String, dynamic> json) => PopularModel(
        id: json["id"],
        posterPath: json["poster_path"],
        title: json["title"],
        releaseDate: json["release_date"],
      );

// Map<String, dynamic> toJson() {
//   final map = <String, dynamic>{};
//   map['id'] = id;
//   map['poster_path'] = posterPath;
//   map['title'] = title;
//   map['release_date'] = releaseDate;
//   return map;
// }
}
