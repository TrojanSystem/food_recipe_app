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
          'https://youtu.be/NcUEZaOp-5s',
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
    JordanaKitchenFoodModel(
      course: 'Dinner',
      category: 'Soup',
      difficulty: 'Easy',
      displayName: 'የዶሮ ማጣፈጫ ሾርባ',
      hostedLargeUrl:
      'https://img.delicious.com.au/pMrQRhBE/del/2015/10/chicken-stock-12493-1.jpg',
      preparationSteps: {
        0: 'አትክልቶቹን ሁሉንም በደንብ ልጦ ማጠብ',
        1: 'ዶሮዉን በደንብ ማጠብ እና መቆራረጥ',
        2: 'በትልቅ ድስት ዉስጥ ሁሉንም አትክልቶች፣ ዶሮ እና ጨው ጨምሮ ለ 2 ሰአት ያክል በደንብ ማብሰል',
        3: 'ጨዉና ዉሃ አርጎ ለ 1 ሰአት አትክልቶቹን በደንብ መቀቀል',
        4: 'በስሎ ከቀዘቀዘ በኋላ ዶሮዉን አዉጥቶ ሌላዉን በማጥለያ ዉሃዉን ማጥለል',
        5: 'የተጠለለዉን የአትክልት ዉሃ ለተለያዩ ሾርባወች መከለሻ ይሆናል',
      },
      nutrition: {
        0: "Low Sugar",
        1: "High Saturated Fat",
        2: "Low Carb",
        3: "Low Calorie",
        4: "High Protein"
      },
      rating: 4.4,
      videoUrls:
      'https://youtu.be/plz4JWEbchU',
      totalTime: '2h 30min',
      ingredient: [
        {
          'ingredient': "ዶሮ",
          'unit': 'kg',
          'quantity': 1,
          'wholeLine': "1 ሙሉ ባለ 1.5kg ዶሮ"
        },
        {
          'ingredient': "የሾርባ ቅጠል",
          'unit': 'እስር',
          'quantity': 1,
          'wholeLine': "1 እስር የሾርባ ቅጠል"
        },
        {
          'ingredient': "ባሮ ሽንኩርት",
          'unit': 'ፍሬ',
          'quantity': 2,
          'wholeLine': "2 ፍሬ ባሮ ሽንኩርት"
        },
        {
          'ingredient': "ጨው",
          'unit': 'tsp',
          'quantity': 2,
          'wholeLine': "2 የሾርባ ማንኪያ ጨው"
        },

        {
          'ingredient': "ካሮት",
          'unit': 'ፍሬ',
          'quantity': 1,
          'wholeLine': "1 ፍሬ ካሮት"
        },
        {
          'ingredient': "ዉሃ",
          'unit': 'L',
          'quantity': 1.5,
          'wholeLine': "1.5 ዉሃ"
        },

      ],
    ),
  ];
}
