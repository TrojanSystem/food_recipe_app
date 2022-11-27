import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class FoodModel {
  bool isFavorite;
  int itemIndex;
  String videoUrls;
  String description;
  String difficulty;
  String displayName;
  double rating;
  String totalTime;
  String category;
  String hostedLargeUrl;
  Map preparationSteps;
  String course;
  Map nutrition;
  List ingredient;

  //var images;

  FoodModel(
      {required this.hostedLargeUrl,
      required this.itemIndex,
      required this.isFavorite,
      required this.nutrition,
      required this.ingredient,
      required this.difficulty,
      required this.description,
      required this.videoUrls,
      required this.course,
      required this.category,
      required this.preparationSteps,
      //required this.images,
      required this.displayName,
      required this.rating,
      required this.totalTime});
}

class FavoriteModel {
  String displayName;
  String hostedLargeUrl;
  String totalTime;
  String difficulty;
  bool isFavorite;
  int itemIndex;
  String category;

  FavoriteModel(
      {required this.itemIndex,
      required this.hostedLargeUrl,
      required this.totalTime,
      required this.difficulty,
      required this.displayName,
      this.isFavorite = false,
      required this.category});

  Map<String, dynamic> toMap() {
    return {
      'isFavorite': isFavorite == true ? 1 : 0,
      'itemIndex': itemIndex,
      'displayName': displayName,
      'difficulty': difficulty,
      'totalTime': totalTime,
      'hostedLargeUrl': hostedLargeUrl,
      'category': category
    };
  }

  static FavoriteModel fromMap(Map<String, dynamic> map) {
    return FavoriteModel(
      isFavorite: map['isFavorite'] == 1 ? true : false,
      itemIndex: map['itemIndex'],
      category: map['category'],
      totalTime: map['totalTime'],
      hostedLargeUrl: map['hostedLargeUrl'],
      difficulty: map['difficulty'],
      displayName: map['displayName'],
    );
  }
}
