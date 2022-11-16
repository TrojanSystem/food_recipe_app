class FoodModel {
  String videoUrls;
  String discription;
  String defficulty;
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
      required this.defficulty,
      required this.discription,
      required this.videoUrls,
      required this.course,
      required this.category,
      required this.preparationSteps,
      //required this.images,
      required this.displayName,
      required this.rating,
      required this.totalTime});
}
