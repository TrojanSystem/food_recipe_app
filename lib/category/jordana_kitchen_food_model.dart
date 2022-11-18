import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class JordanaKitchenFoodModel {
  String videoUrls;

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

  JordanaKitchenFoodModel({
    required this.rating,
    required this.videoUrls,
    required this.ingredient,
    required this.nutrition,
    required this.preparationSteps,
    required this.hostedLargeUrl,
    required this.displayName,
    required this.totalTime,
    required this.difficulty,
    required this.course,
    required this.category,
  });
}

class JordanaKitchen extends ChangeNotifier {
  List<JordanaKitchenFoodModel> jordanaFoodList = [
    JordanaKitchenFoodModel(
      course: 'Dinner',
      category: 'Soup',
      difficulty: 'Easy',
      displayName: 'የአትክልት ማጣፈጫ ሾርባ',
      hostedLargeUrl:
          'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_center,w_730,h_487/k%2Farchive%2F6bd659d4624f3a8217812ca61fa11d1f06e0fbf8',
      preparationSteps: {
        0: 'አትክልቶቹን ሁሉንም በደንብ ልጦ ማጠብ',
        1: 'አትክልቶቹን በሙሉ ለሁለት ለሁለት መክተፍ',
        2: 'በትልቅ ድስት ዉስጥ ሁሉንም አትክልቶች መጨመር',
        3: 'ጨዉና ዉሃ አርጎ ለ 1 ሰአት አትክልቶቹን በደንብ መቀቀል',
        4: 'ከተቀቀለና ከቀዘቀዘ በኋላ ማጥለል',
        5: 'የተጠለለዉን የአትክልት ዉሃ ለተለያዩ ሾርባወች መከለሻ ይሆናል',
      },
      nutrition: {
        0: "Low Sugar",
        1: "Low Saturated Fat",
        2: "Low Carb",
        3: "Low Calorie",
        4: "Low Protein"
      },
      rating: 3.4,
      videoUrls:
          'https://www.youtube.com/watch?v=zZuOgJBRqQs&ab_channel=RecipeTinEats',
      totalTime: '1h 15min',
      ingredient: [
        {
          'ingredient': "ድንች",
          'unit': 'ፍሬ',
          'quantity': 2,
          'wholeLine': "2 ፍሬ ድንች"
        },
        {
          'ingredient': "ሽንኩርት",
          'unit': 'ፍሬ',
          'quantity': 2,
          'wholeLine': "2 ፍሬ ሽንኩርት"
        },
        {
          'ingredient': "ባሮ ሽንኩርት",
          'unit': 'ፍሬ',
          'quantity': 2,
          'wholeLine': "2 ፍሬ ባሮ ሽንኩርት"
        },
        {
          'ingredient': "ቲማቲም",
          'unit': 'ፍሬ',
          'quantity': 2,
          'wholeLine': "2 ፍሬ ቲማቲም"
        },
        {
          'ingredient': "የስጎ ቅጠል",
          'unit': 'ፍሬ',
          'quantity': 1,
          'wholeLine': "1 ፍሬ የስጎ ቅጠል"
        },
        {
          'ingredient': "ካሮት",
          'unit': 'ፍሬ',
          'quantity': 2,
          'wholeLine': "2 ፍሬ ካሮት"
        },
        {
          'ingredient': "ዉሃ",
          'unit': 'L',
          'quantity': 1.5,
          'wholeLine': "1.5 ዉሃ"
        },
        {
          'ingredient': "ጨው እና ቁንዶበርበሬ",
          'unit': 'በመጠኑ',
          'quantity': 1,
          'wholeLine': "ጨው እና ቁንዶበርበሬ"
        },
      ],
    ),
  ];
}
