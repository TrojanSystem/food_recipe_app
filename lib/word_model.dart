// class WordModel {
//   String name;
//   double rating;
//   String totalTime;
//   String images;
//
//   WordModel(
//       {required this.images,
//       required this.name,
//       required this.rating,
//       required this.totalTime});
//
//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'rating': rating,
//       'totalTime': totalTime,
//       'images': images,
//     };
//   }
//
//   static WordModel fromMap(Map<String, dynamic> map) {
//     return WordModel(
//       name: map['name'],
//       rating: map['rating'],
//       totalTime: map['totalTime'],
//       images: map['images'],
//
//       // checked: map['checked'],
//     );
//   }
//
//   static List<WordModel> recipesFromSnapshot(List snapshot) {
//     return snapshot.map((e) => WordModel.fromMap(e)).toList();
//   }
// }
