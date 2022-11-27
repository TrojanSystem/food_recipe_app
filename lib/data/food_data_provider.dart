import 'package:dictionary/data/food_model.dart';

import 'package:flutter/material.dart';

class FoodDataProvider extends ChangeNotifier {
  bool isShowing = false;

  void changer(bool isShow) {
    isShowing = !isShow;
    notifyListeners();
  }

  List<FoodModel> foodListData = [
    FoodModel(
      isFavorite: false,
      itemIndex: 1,
      description:
          ' Vegetable stock is a flavoured liquid preparation made by simmering vegetables in water.',
      course: 'Lunch',
      category: 'Homemade Pasta',
      difficulty: 'Easy',
      displayName: 'Mortadella & Cream Sauce',
      hostedLargeUrl:
          'https://www.the-pasta-project.com/wp-content/uploads/pasta-with-mortadella-and-pistachios-4.jpg',
      preparationSteps: {
        0: 'ቀይ፣ ነጭ ሽንኩርት፣ ካሮት እና የሾርባ ቅጠሉን በደቃቁ መክተፍ',
        1: 'ግማሹን የገበታ ቅቤ በመጥበሻ ላይ አቅልጦ ከላይ የተከተፉትን በሙሉ አስገብቶ ቡናማ እስኪሆኑ መጥበስ',
        2: 'ሞርቶዴላዉን በደቃቁ መክተፍ',
        3: 'ፉርኖ ዱቄቱን እየተጠበሰ ያለው ሽንኩርት ላይ አስገብቶ እያማሰሉ ደረቅ ሲል ዉሃ እየጨመሩ ማብሰል',
        4: 'በመቀጠል ወተቱን መጨመር',
        5: 'በሌላ መጥበሻ ቀሪዉ የገበታ ቅቤ አቅልጦ ሞርቶዴላዉን መጥበስ',
        6: 'የተጠበሰዉን ሞርቶዴላ ሽንኩርቱ ዉስጥ መጨመር',
        7: 'በትንሽ እሳት ለ15 ደቂቃ ማብሰል',
        8: 'ጨው፤ ቁንዶበርበሬ እና የስጎ ቅጠሉን ጨምሮ በሚፈለገው ፓስታ አደባልቆ መጠቀም',
      },
      nutrition: {
        0: "Low Sugar",
        1: "High Fat",
        2: "Low Carb",
        3: "High Calorie",
        4: "High Protein"
      },
      rating: 4.9,
      videoUrls: 'https://youtu.be/vYiDYYQs12w',
      totalTime: '45min',
      ingredient: [
        {
          'ingredient': "ቀይ ሽንኩርት",
          'unit': 'ራስ',
          'quantity': 1,
          'wholeLine': "1 ራስ ቀይ ሽንኩርት"
        },
        {
          'ingredient': "ነጭ ሽንኩርት",
          'unit': 'ፍሬ',
          'quantity': 3,
          'wholeLine': "3 ፍሬ ነጭ ሽንኩርት"
        },
        {
          'ingredient': "ባሮ ሽንኩርት",
          'unit': 'ራስ',
          'quantity': 1,
          'wholeLine': "1 ራስ ካሮት"
        },
        {
          'ingredient': "የሾርባ ቅጠል",
          'unit': 'ግንድ',
          'quantity': 2,
          'wholeLine': "2 ግንድ የሾርባ ቅጠል"
        },
        {
          'ingredient': "የገበታ ቅቤ",
          'unit': 'tsp',
          'quantity': 2,
          'wholeLine': "2 የሾርባ ማንኪያ የገበታ ቅቤ"
        },
        {
          'ingredient': "ወተት",
          'unit': 'L',
          'quantity': 200,
          'wholeLine': "200ML ወተት"
        },
        {
          'ingredient': "ሞርቶዴላ",
          'unit': 'G',
          'quantity': 200,
          'wholeLine': "200G ሞርቶዴላ"
        },
        {
          'ingredient': "ፉርኖ ዱቄት",
          'unit': 'tsp',
          'quantity': 2,
          'wholeLine': "2 የሾርባ ማንኪያ ፉርኖ ዱቄት"
        },
        {
          'ingredient': "የስጎ ቅጠል",
          'unit': 'tsp',
          'quantity': 1,
          'wholeLine': "1 በደቃቁ የተከተፈ የስጎ ቅጠል"
        },
        {
          'ingredient': "ጨዉና ቁንዶበርበሬ",
          'unit': 'በመጠኑ',
          'quantity': 1,
          'wholeLine': "ጨዉና ቁንዶበርበሬ በመጠኑ"
        },
      ],
    ),
    FoodModel(
      isFavorite: false,
      itemIndex: 2,
      description:
          ' Vegetable stock is a flavoured liquid preparation made by simmering vegetables in water.',
      course: 'Dinner',
      category: 'Soup',
      difficulty: 'Easy',
      displayName: 'Vegetable Stock',
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
        1: "Low Fat",
        2: "Low Carb",
        3: "Low Calorie",
        4: "Low Protein"
      },
      rating: 4.4,
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
    FoodModel(
        isFavorite: false,
        itemIndex: 3,
        videoUrls:
            "https://gv.yummlystatic.com/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar-dash.mpd",
        difficulty: "Medium",
        course: "Lunch",
        category: "Homemade Pasta",
        rating: 3.9,
        totalTime: "1hr 30min",
        hostedLargeUrl:
            "https://res.cloudinary.com/hksqkdlah/image/upload/33125_sfs-tagliatelle-bolognese-sauce-83.jpg",
        displayName: 'Tagliatelle',
        ingredient: [
          {
            'ingredient': "ፉርኖ ዱቄት",
            'unit': 'g',
            'quantity': 400,
            'wholeLine': "400g ፉርኖ ዱቄት"
          },
          {
            'ingredient': "እንቁላል",
            'unit': 'ፍሬ',
            'quantity': 4,
            'wholeLine': "4 እንቁላል"
          },
          {
            'ingredient': "ዉሃ",
            'unit': 'tsp',
            'quantity': 6.5,
            'wholeLine': "6.5 የሾርባ ማንኪያ ዉሃ"
          },
          {
            'ingredient': "ጨው",
            'unit': 'tsp',
            'quantity': (1 / 3).toStringAsFixed(2),
            'wholeLine': "ሩብ የ ሻይ ማንኪያ ጨው"
          },
        ],
        preparationSteps: {
          0: "ዱቄቱን እና ጨዉን ቀላቅቅሎ በንጹህ ጠረፔዛ ላይ ማስቀመጥ",
          1: "ዱቄቱን መሃሉን መክፈት፤እንቁላል መጨመር እና በንጹህ እጅ ማሸት(ለ 10min መታሸት አለበት)",
          2: "እየታሸ እያለ ሊጡ የመፈረካከስ እና የመድረቅ ባህሪ ካመጣ ከ4-5 የሾርባ ማንኪያ ዉሃ መጨመር",
          3: "ከታሸ በኋላ ለ 15min በፌስታል ተጠቅልሎ መቀመጥ አለበት",
          4: "ሊጡን በ እንጨት ወይም በጠርሙስ ከ3cm ዉፍረት እና 50cm ቁመት እንዳይበልጥ አርጎ መዳመጥ",
          5: "ተዳምጦ ካለቀለት በኋላ በግምት በ 1cm ርቀት መቁረጥ",
          6: "ዱቄት የተነሰነሰበት ትሪ ወይም ጠረፔዛ ላይ በመዘርጋት ለ 1hr ይህል መጠጥ እንዲል ማድረግ",
          7: "2L ዉሃ አፍልቶ ጨው ጨምሮ ቴላቴሊዉን ቀስ እያረጉ ዉሃ ዉስጥ መጨመር",
          8: "ለ 3min ያህል መቀቀል እና በፓስታ ማጥለያ አርጎ ማጥለል",
          9: "ከዛ ከማንኛዉም አይነት ሶስ ጋር ቀላቅሎ ማቅረብ።",
        },
        description:
            "Tagliatelle is a long, flat, ribbon-shaped pasta originating in Italy\'s Marche and Emilia-Romagna regions. It\'s available in both fresh and dried forms, and is traditionally served with meat sauce, such as the classic Bolognese.",
        nutrition: {
          0: "Low Sugar",
          1: "Low Fat",
          2: "High Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),
    FoodModel(
        isFavorite: false,
        itemIndex: 4,
        videoUrls:
            "https://gv.yummlystatic.com/c067935f-d557-47a9-b4af-760d1a815302/PmyfziuSPqisUO36HnEA_Montage_Melt_in_Your_Mouth_Baked_Chicken_Breasts/dash.mpd",
        difficulty: "Easy",
        course: "Main Dishes",
        category: "Baking & Cooking",
        rating: 4.0,
        totalTime: "40 Min",
        hostedLargeUrl:
            "https://lh3.googleusercontent.com/IYx1dXKSj7ohoCQboBtWrb729QdFKZPeq-9VDDjB1kMs3cA_2o-kc8gXEaRdG3AFIK8lj3MPxAlULJpU6X72npI=s360",
        displayName: 'Melt-In-Your-Mouth Baked Chicken Breasts',
        ingredient: [
          {
            'ingredient': "boneless skinless chicken breasts",
            'unit': 'pound',
            'quantity': 2,
            'wholeLine':
                "2 lb. boneless skinless chicken breasts (pounded 3/4” thick, approx. 4 breasts)"
          },
          {
            'ingredient': "salt",
            'unit': 'pound',
            'quantity': 2,
            'wholeLine': "2 tsp. salt"
          },
          {
            'ingredient': "nonstick cooking spray",
            'unit': '0',
            'quantity': 0,
            'wholeLine': "Nonstick cooking spray"
          },
          {
            'ingredient': "black pepper",
            'unit': 'teaspoon',
            'quantity': 0.25,
            'wholeLine': "1/4 tsp. black pepper"
          },
          {
            'ingredient': "garlic powder",
            'unit': 'teaspoon',
            'quantity': 1,
            'wholeLine': "1 tsp. garlic powder"
          },
          {
            'ingredient': "mayonnaise",
            'unit': 'cup',
            'quantity': 0.25,
            'wholeLine': "1/4 cup mayonnaise"
          },
          {
            'ingredient': "plain greek yogurt",
            'unit': 'cup',
            'quantity': 0.25,
            'wholeLine': "1/4 cup plain Greek yogurt"
          },
          {
            'ingredient': "shredded Parmesan cheese",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine': "1/2 cup shredded Parmesan cheese"
          }
        ],
        preparationSteps: {
          0: "Preheat the oven to 375°F. Spray a 9x13-inch baking dish with nonstick cooking spray.",
          1: "Season the chicken breasts liberally on both sides with the salt, pepper, and garlic powder. Arrange in a single layer in the prepared baking dish.",
          2: "Stir together the mayonnaise and Greek yogurt in a small bowl. Spread the mixture evenly over the tops of the chicken breasts.",
          3: "Sprinkle the Parmesan cheese evenly over the chicken breasts.",
          4: "Bake the chicken breasts on middle rack of oven until the cheese is melted and lightly browned, and the chicken has reached an internal temperature of 160°F, 25-30 minutes.",
          5: "Check to see that chicken is done. Remove from oven or add time as needed.",
          6: "Serve the chicken breasts immediately."
        },
        description:
            "These creamy, cheesy chicken breasts will, as their title says, melt in your mouth.).",
        nutrition: {
          0: "Low Sugar",
          1: "Low Fat",
          2: "Low Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),
  ];

// static Future<List> foodProvider() async {  int login =24;
// int pwd =7;
// var uri =Uri.parse('https://yummly2.p.rapidapi.com/feeds/list-similarities',
//   );
//
//   var response = await http.get(
//       uri,
//       headers: {
//         "Accept": "application/json",
//         'X-RapidAPI-Key':
//             '2c114bf2c8msh78581fd98d4a51ep107ca2jsnbfb22209ea79',
//         'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
//         'useQueryString': 'true'
//       });
//   List foodList = [];
//   Map data = jsonDecode(response.body);
//
//   for (var i in data['feed']) {
//
//     foodList.add(i['content']['details']);
//   }
//
//   return foodList;
// }

}
