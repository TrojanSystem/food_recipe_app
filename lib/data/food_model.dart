class FoodModel {
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
