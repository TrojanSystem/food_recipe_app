// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
// import 'package:dictionary/word_model.dart';
// import 'package:get/get.dart';
//
// class DictionaryHub extends ChangeNotifier {
//   static Future<List<WordModel>> getAllNews() async {
//     List words = [];
//     var response = await http.get(Uri.https(
//         'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=1ccec22d7ae44698aa58a89834513065'),
//           headers: {
//             'X-RapidAPI-Key': '2c114bf2c8msh78581fd98d4a51ep107ca2jsnbfb22209ea79',
//             'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
//
//         });
//
//     var data = jsonDecode(response.body);
// print(data);
//     if (data['status'] == "ok") {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//
//       for (var i in data['articles']) {
//         words.add(i);
//       }
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load album');
//     }
//     return WordModel.recipesFromSnapshot(words);
//   }
// }
