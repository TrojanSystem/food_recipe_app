import 'dart:convert';
import 'package:dictionary/word_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class FoodDataProvider extends ChangeNotifier {
  List<FoodModel> foodListData = [
    FoodModel(
        videoUrls:
        "https://gv.yummlystatic.com/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar-dash.mpd",
        defficulty: "Quick",
        course: "Desserts",
        category: "Baking & Cooking",
        rating: 3,
        totalTime: "23 min",
        hostedLargeUrl:
        "https://lh3.googleusercontent.com/q2rwLFGmDoB9JLDU9Hq0it2j3RL2bpwln6wHhjrNDRUglgrRyXwvohjcvHWI9f1Pz3xBLCqh1J47LbY-vzlq2Bk=s360",
        displayName: 'Soft and Chewy Keto “Sugar” Cookies',
        ingredient: [
          {
            'ingredient': "unsalted butter",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine':
            "1/2 cup (115g) unsalted butter, softened"
          },
          {
            'ingredient': "full fat cream cheese",
            'unit': 'ounce',
            'quantity': 3,
            'wholeLine': "3 oz. full-fat cream cheese"
          },
          {
            'ingredient': "erythritol",
            'unit': 'cup',
            'quantity': 1.5,
            'wholeLine': "1 1/2 cups (270g) erythritol"
          },
          {
            'ingredient': "large eggs",
            'unit': 'count',
            'quantity': 1,
            'wholeLine': "1 egg"
          },
          {
            'ingredient': "vanilla extract",
            'unit': 'teaspoon',
            'quantity': 1,
            'wholeLine': "1 tsp. vanilla extract"
          },
          {
            'ingredient': "super-fine almond flour",
            'unit': 'cup',
            'quantity': 3,
            'wholeLine': "3 cups (360g) super-fine almond flour"
          },
          {
            'ingredient': "baking soda",
            'unit': 'teaspoon',
            'quantity': 0.5,
            'wholeLine': "1/2 tsp. baking soda"
          },
          {
            'ingredient': "salt",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine': "1/2 tsp salt"
          }
        ],
        preparationSteps: {
          0:"Line two baking sheets with silicone baking mats or parchment paper. Set aside.",
          1:"Combine the softened butter, cream cheese, and erythritol in a large mixing bowl. Using a mixer with a whisk attachment, mix on medium speed until pale and fluffy, about 1 minute.",
          2:"Add the egg and vanilla extract. Continue to beat on medium speed until light and fluffy, 30 seconds to 1 minute.",
          3:"To measure almond flour, spoon it into a cup and level off (don't scoop or tap the cup, as this packs in extra, which can mean the cookies stay in balls in the oven rather than spread. Turn the mixer to low speed. Add the almond flour, baking soda, and salt to the bowl. Mix for about 1 minute to combine all ingredients",
          4:"Form the cookie dough into 24 balls. Arrange on the prepared baking sheets.",
          5:"Preheat the oven to 350°F.",
          6:"Place the baking sheets in the freezer for 10-15 minutes. Alternately, freeze the dough balls on a small baking sheet or large plate, and transfer back to the baking sheets just before baking.",
          7:"Bake the cookies on middle and upper-middle racks of oven until they are puffy and slightly golden brown at edges, 12-13 minutes.",
          8:"Check to see that cookies are done. Remove from oven or add time as needed.",
          9:"Allow cookies to cool for 5 minutes on the baking sheets, then transfer to cooling racks. Serve and enjoy. Store leftovers in an airtight container at room temperature for 3 days, or in the refrigerator for 5 days.",
        },
        discription:
        "Meet your new favorite keto cookie recipe! Super-fine almond flour, erythritol, cream cheese, and butter come together to make these easy, soft keto sugar cookies. While they appear and taste like classic sugar cookies, these guilt-free cookies are low in carbs, making them keto diet approved. They're incredibly rich thanks to the butter, cream cheese, and egg, while erythritol (a sugar-alcohol-based alternative sweetener) and vanilla extract provide the perfect amount of sweetness. Not only are they low-carb, but they're also gluten-free and grain-free — plus you can feel good about using erythritol because it's natural and tastes like sugar without the extra calories. An added bonus: they only take about 20 minutes to make.These keto cookies are perfect for any party or special occasion. They're always a hit around Christmas — sugar cookies are a holiday staple in most American households — and they make a great healthy option for holiday cookie swaps. The recipe is a Yummly original created by [Sara Mellas](https://www.yummly.com/dish/author/Sara%20Mellas). Why Keto? There are a few potential benefits to following a ketogenic diet. When you eat a very low-carb diet, you can turn your body into a fat-burning machine by creating ketones. What this means is when you follow a diet that's high in fat and low in net carbs, your body adjusts so that it pulls its energy from fat. As a result, insulin levels get low enough that your body starts burning rapidly, which is one of the reasons why people turn to the keto diet. The keto diet has been shown to support weight loss, improve energy levels, and increase brain function, among other health benefits. People who follow the keto diet are always on the lookout for delicious low-carb recipes that call for lots of healthy fats like avocado, coconut oil, and even butter — this cookie fits the bill. Variations: Looking to spice up your keto sugar cookie recipe? Here are a few great options to make it your own: _Pump up the almond._ Try substituting almond extract for vanilla extract to give your cookies a warm, toasted almond flavor. Your almond sugar cookies will smell divine right out of the oven! You can even top them with sliced or slivered almonds. _Mix in chocolate._ While traditional sugar cookies have a vanilla flavor and don't contain chocolate chips, why not mix things up? Feel free to toss in chocolate chips. Just be sure they're sugar-free if you're sticking to the low-carb keto theme. _Cut into shapes._ Have some fun with your keto cookie recipe! Use a cookie cutter to make a variety of shapes and sizes. _Swap your flour._ Try using coconut flour instead of almond flour, depending on what you have on hand or prefer in flavor. Just remember coconut flour is extremely absorbent so you don't need a lot. Both options are gluten-free. _Add frosting._ Nothing beats a frosted cookie come holiday season. Check out a keto-friendly chocolate frosting recipe using coconut oil for a low-carb alternative to canned frosting loaded with sugar and additives. Satisfy your sweet tooth with these keto sugar cookies, which look and taste like the real thing. You can save any leftover cookies in a cool, dry pantry or cupboard for up to three weeks, or frozen for up to three months. If you have any leftovers, that is!",
        nutrition: {
          0: "Low Sugar",
          1: "Low Saturated Fat",
          2: "Low Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),
    FoodModel(
        videoUrls:
        "https://gv.yummlystatic.com/c067935f-d557-47a9-b4af-760d1a815302/PmyfziuSPqisUO36HnEA_Montage_Melt_in_Your_Mouth_Baked_Chicken_Breasts/dash.mpd",
        defficulty: "Easy",
        course: "Main Dishes",
        category: "Baking & Cooking",
        rating: 3,
        totalTime: "40 Min",
        hostedLargeUrl:
        "https://lh3.googleusercontent.com/IYx1dXKSj7ohoCQboBtWrb729QdFKZPeq-9VDDjB1kMs3cA_2o-kc8gXEaRdG3AFIK8lj3MPxAlULJpU6X72npI=s360",
        displayName: 'Abu',
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
        discription:
        "These creamy, cheesy chicken breasts will, as their title says, melt in your mouth.).",
        nutrition: {
          0: "Low Sugar",
          1: "Low Saturated Fat",
          2: "Low Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),  FoodModel(
        videoUrls:
        "https://gv.yummlystatic.com/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar-dash.mpd",
        defficulty: "Quick",
        course: "Desserts",
        category: "Baking & Cooking",
        rating: 3,
        totalTime: "23 min",
        hostedLargeUrl:
        "https://lh3.googleusercontent.com/q2rwLFGmDoB9JLDU9Hq0it2j3RL2bpwln6wHhjrNDRUglgrRyXwvohjcvHWI9f1Pz3xBLCqh1J47LbY-vzlq2Bk=s360",
        displayName: 'Soft and Chewy Keto “Sugar” Cookies',
        ingredient: [
          {
            'ingredient': "unsalted butter",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine':
            "1/2 cup (115g) unsalted butter, softened"
          },
          {
            'ingredient': "full fat cream cheese",
            'unit': 'ounce',
            'quantity': 3,
            'wholeLine': "3 oz. full-fat cream cheese"
          },
          {
            'ingredient': "erythritol",
            'unit': 'cup',
            'quantity': 1.5,
            'wholeLine': "1 1/2 cups (270g) erythritol"
          },
          {
            'ingredient': "large eggs",
            'unit': 'count',
            'quantity': 1,
            'wholeLine': "1 egg"
          },
          {
            'ingredient': "vanilla extract",
            'unit': 'teaspoon',
            'quantity': 1,
            'wholeLine': "1 tsp. vanilla extract"
          },
          {
            'ingredient': "super-fine almond flour",
            'unit': 'cup',
            'quantity': 3,
            'wholeLine': "3 cups (360g) super-fine almond flour"
          },
          {
            'ingredient': "baking soda",
            'unit': 'teaspoon',
            'quantity': 0.5,
            'wholeLine': "1/2 tsp. baking soda"
          },
          {
            'ingredient': "salt",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine': "1/2 tsp salt"
          }
        ],
        preparationSteps: {
          0:"Line two baking sheets with silicone baking mats or parchment paper. Set aside.",
          1:"Combine the softened butter, cream cheese, and erythritol in a large mixing bowl. Using a mixer with a whisk attachment, mix on medium speed until pale and fluffy, about 1 minute.",
          2:"Add the egg and vanilla extract. Continue to beat on medium speed until light and fluffy, 30 seconds to 1 minute.",
          3:"To measure almond flour, spoon it into a cup and level off (don't scoop or tap the cup, as this packs in extra, which can mean the cookies stay in balls in the oven rather than spread. Turn the mixer to low speed. Add the almond flour, baking soda, and salt to the bowl. Mix for about 1 minute to combine all ingredients",
          4:"Form the cookie dough into 24 balls. Arrange on the prepared baking sheets.",
          5:"Preheat the oven to 350°F.",
          6:"Place the baking sheets in the freezer for 10-15 minutes. Alternately, freeze the dough balls on a small baking sheet or large plate, and transfer back to the baking sheets just before baking.",
          7:"Bake the cookies on middle and upper-middle racks of oven until they are puffy and slightly golden brown at edges, 12-13 minutes.",
          8:"Check to see that cookies are done. Remove from oven or add time as needed.",
          9:"Allow cookies to cool for 5 minutes on the baking sheets, then transfer to cooling racks. Serve and enjoy. Store leftovers in an airtight container at room temperature for 3 days, or in the refrigerator for 5 days.",
        },
        discription:
        "Meet your new favorite keto cookie recipe! Super-fine almond flour, erythritol, cream cheese, and butter come together to make these easy, soft keto sugar cookies. While they appear and taste like classic sugar cookies, these guilt-free cookies are low in carbs, making them keto diet approved. They're incredibly rich thanks to the butter, cream cheese, and egg, while erythritol (a sugar-alcohol-based alternative sweetener) and vanilla extract provide the perfect amount of sweetness. Not only are they low-carb, but they're also gluten-free and grain-free — plus you can feel good about using erythritol because it's natural and tastes like sugar without the extra calories. An added bonus: they only take about 20 minutes to make.These keto cookies are perfect for any party or special occasion. They're always a hit around Christmas — sugar cookies are a holiday staple in most American households — and they make a great healthy option for holiday cookie swaps. The recipe is a Yummly original created by [Sara Mellas](https://www.yummly.com/dish/author/Sara%20Mellas). Why Keto? There are a few potential benefits to following a ketogenic diet. When you eat a very low-carb diet, you can turn your body into a fat-burning machine by creating ketones. What this means is when you follow a diet that's high in fat and low in net carbs, your body adjusts so that it pulls its energy from fat. As a result, insulin levels get low enough that your body starts burning rapidly, which is one of the reasons why people turn to the keto diet. The keto diet has been shown to support weight loss, improve energy levels, and increase brain function, among other health benefits. People who follow the keto diet are always on the lookout for delicious low-carb recipes that call for lots of healthy fats like avocado, coconut oil, and even butter — this cookie fits the bill. Variations: Looking to spice up your keto sugar cookie recipe? Here are a few great options to make it your own: _Pump up the almond._ Try substituting almond extract for vanilla extract to give your cookies a warm, toasted almond flavor. Your almond sugar cookies will smell divine right out of the oven! You can even top them with sliced or slivered almonds. _Mix in chocolate._ While traditional sugar cookies have a vanilla flavor and don't contain chocolate chips, why not mix things up? Feel free to toss in chocolate chips. Just be sure they're sugar-free if you're sticking to the low-carb keto theme. _Cut into shapes._ Have some fun with your keto cookie recipe! Use a cookie cutter to make a variety of shapes and sizes. _Swap your flour._ Try using coconut flour instead of almond flour, depending on what you have on hand or prefer in flavor. Just remember coconut flour is extremely absorbent so you don't need a lot. Both options are gluten-free. _Add frosting._ Nothing beats a frosted cookie come holiday season. Check out a keto-friendly chocolate frosting recipe using coconut oil for a low-carb alternative to canned frosting loaded with sugar and additives. Satisfy your sweet tooth with these keto sugar cookies, which look and taste like the real thing. You can save any leftover cookies in a cool, dry pantry or cupboard for up to three weeks, or frozen for up to three months. If you have any leftovers, that is!",
        nutrition: {
          0: "Low Sugar",
          1: "Low Saturated Fat",
          2: "Low Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),
    FoodModel(
        videoUrls:
        "https://gv.yummlystatic.com/c067935f-d557-47a9-b4af-760d1a815302/PmyfziuSPqisUO36HnEA_Montage_Melt_in_Your_Mouth_Baked_Chicken_Breasts/dash.mpd",
        defficulty: "Easy",
        course: "Main Dishes",
        category: "Baking & Cooking",
        rating: 3,
        totalTime: "40 Min",
        hostedLargeUrl:
        "https://lh3.googleusercontent.com/IYx1dXKSj7ohoCQboBtWrb729QdFKZPeq-9VDDjB1kMs3cA_2o-kc8gXEaRdG3AFIK8lj3MPxAlULJpU6X72npI=s360",
        displayName: 'Abu',
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
        discription:
        "These creamy, cheesy chicken breasts will, as their title says, melt in your mouth.).",
        nutrition: {
          0: "Low Sugar",
          1: "Low Saturated Fat",
          2: "Low Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),
    FoodModel(
        videoUrls:
        "https://gv.yummlystatic.com/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar/aMiA7kETwmxm1kJ6bIXA_Montage_Sugar_Cookie_Keto_Flourless_No_Sugar-dash.mpd",
        defficulty: "Quick",
        course: "Desserts",
        category: "Baking & Cooking",
        rating: 3,
        totalTime: "23 min",
        hostedLargeUrl:
        "https://lh3.googleusercontent.com/q2rwLFGmDoB9JLDU9Hq0it2j3RL2bpwln6wHhjrNDRUglgrRyXwvohjcvHWI9f1Pz3xBLCqh1J47LbY-vzlq2Bk=s360",
        displayName: 'Soft and Chewy Keto “Sugar” Cookies',
        ingredient: [
          {
            'ingredient': "unsalted butter",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine':
                "1/2 cup (115g) unsalted butter, softened"
          },
          {
            'ingredient': "full fat cream cheese",
            'unit': 'ounce',
            'quantity': 3,
            'wholeLine': "3 oz. full-fat cream cheese"
          },
          {
            'ingredient': "erythritol",
            'unit': 'cup',
            'quantity': 1.5,
            'wholeLine': "1 1/2 cups (270g) erythritol"
          },
          {
            'ingredient': "large eggs",
            'unit': 'count',
            'quantity': 1,
            'wholeLine': "1 egg"
          },
          {
            'ingredient': "vanilla extract",
            'unit': 'teaspoon',
            'quantity': 1,
            'wholeLine': "1 tsp. vanilla extract"
          },
          {
            'ingredient': "super-fine almond flour",
            'unit': 'cup',
            'quantity': 3,
            'wholeLine': "3 cups (360g) super-fine almond flour"
          },
          {
            'ingredient': "baking soda",
            'unit': 'teaspoon',
            'quantity': 0.5,
            'wholeLine': "1/2 tsp. baking soda"
          },
          {
            'ingredient': "salt",
            'unit': 'cup',
            'quantity': 0.5,
            'wholeLine': "1/2 tsp salt"
          }
        ],
        preparationSteps: {
          0:"Line two baking sheets with silicone baking mats or parchment paper. Set aside.",
          1:"Combine the softened butter, cream cheese, and erythritol in a large mixing bowl. Using a mixer with a whisk attachment, mix on medium speed until pale and fluffy, about 1 minute.",
          2:"Add the egg and vanilla extract. Continue to beat on medium speed until light and fluffy, 30 seconds to 1 minute.",
          3:"To measure almond flour, spoon it into a cup and level off (don't scoop or tap the cup, as this packs in extra, which can mean the cookies stay in balls in the oven rather than spread. Turn the mixer to low speed. Add the almond flour, baking soda, and salt to the bowl. Mix for about 1 minute to combine all ingredients",
          4:"Form the cookie dough into 24 balls. Arrange on the prepared baking sheets.",
          5:"Preheat the oven to 350°F.",
          6:"Place the baking sheets in the freezer for 10-15 minutes. Alternately, freeze the dough balls on a small baking sheet or large plate, and transfer back to the baking sheets just before baking.",
          7:"Bake the cookies on middle and upper-middle racks of oven until they are puffy and slightly golden brown at edges, 12-13 minutes.",
          8:"Check to see that cookies are done. Remove from oven or add time as needed.",
          9:"Allow cookies to cool for 5 minutes on the baking sheets, then transfer to cooling racks. Serve and enjoy. Store leftovers in an airtight container at room temperature for 3 days, or in the refrigerator for 5 days.",
        },
        discription:
            "Meet your new favorite keto cookie recipe! Super-fine almond flour, erythritol, cream cheese, and butter come together to make these easy, soft keto sugar cookies. While they appear and taste like classic sugar cookies, these guilt-free cookies are low in carbs, making them keto diet approved. They're incredibly rich thanks to the butter, cream cheese, and egg, while erythritol (a sugar-alcohol-based alternative sweetener) and vanilla extract provide the perfect amount of sweetness. Not only are they low-carb, but they're also gluten-free and grain-free — plus you can feel good about using erythritol because it's natural and tastes like sugar without the extra calories. An added bonus: they only take about 20 minutes to make.These keto cookies are perfect for any party or special occasion. They're always a hit around Christmas — sugar cookies are a holiday staple in most American households — and they make a great healthy option for holiday cookie swaps. The recipe is a Yummly original created by [Sara Mellas](https://www.yummly.com/dish/author/Sara%20Mellas). Why Keto? There are a few potential benefits to following a ketogenic diet. When you eat a very low-carb diet, you can turn your body into a fat-burning machine by creating ketones. What this means is when you follow a diet that's high in fat and low in net carbs, your body adjusts so that it pulls its energy from fat. As a result, insulin levels get low enough that your body starts burning rapidly, which is one of the reasons why people turn to the keto diet. The keto diet has been shown to support weight loss, improve energy levels, and increase brain function, among other health benefits. People who follow the keto diet are always on the lookout for delicious low-carb recipes that call for lots of healthy fats like avocado, coconut oil, and even butter — this cookie fits the bill. Variations: Looking to spice up your keto sugar cookie recipe? Here are a few great options to make it your own: _Pump up the almond._ Try substituting almond extract for vanilla extract to give your cookies a warm, toasted almond flavor. Your almond sugar cookies will smell divine right out of the oven! You can even top them with sliced or slivered almonds. _Mix in chocolate._ While traditional sugar cookies have a vanilla flavor and don't contain chocolate chips, why not mix things up? Feel free to toss in chocolate chips. Just be sure they're sugar-free if you're sticking to the low-carb keto theme. _Cut into shapes._ Have some fun with your keto cookie recipe! Use a cookie cutter to make a variety of shapes and sizes. _Swap your flour._ Try using coconut flour instead of almond flour, depending on what you have on hand or prefer in flavor. Just remember coconut flour is extremely absorbent so you don't need a lot. Both options are gluten-free. _Add frosting._ Nothing beats a frosted cookie come holiday season. Check out a keto-friendly chocolate frosting recipe using coconut oil for a low-carb alternative to canned frosting loaded with sugar and additives. Satisfy your sweet tooth with these keto sugar cookies, which look and taste like the real thing. You can save any leftover cookies in a cool, dry pantry or cupboard for up to three weeks, or frozen for up to three months. If you have any leftovers, that is!",
        nutrition: {
          0: "Low Sugar",
          1: "Low Saturated Fat",
          2: "Low Carb",
          3: "Low Calorie",
          4: "High Protein"
        }),
    FoodModel(
        videoUrls:
            "https://gv.yummlystatic.com/c067935f-d557-47a9-b4af-760d1a815302/PmyfziuSPqisUO36HnEA_Montage_Melt_in_Your_Mouth_Baked_Chicken_Breasts/dash.mpd",
        defficulty: "Easy",
        course: "Main Dishes",
        category: "Baking & Cooking",
        rating: 3,
        totalTime: "40 Min",
        hostedLargeUrl:
            "https://lh3.googleusercontent.com/IYx1dXKSj7ohoCQboBtWrb729QdFKZPeq-9VDDjB1kMs3cA_2o-kc8gXEaRdG3AFIK8lj3MPxAlULJpU6X72npI=s360",
        displayName: 'Abu',
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
        discription:
            "These creamy, cheesy chicken breasts will, as their title says, melt in your mouth.).",
        nutrition: {
          0: "Low Sugar",
          1: "Low Saturated Fat",
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
