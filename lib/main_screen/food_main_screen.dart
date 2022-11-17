import 'package:dictionary/data/food_data_provider.dart';

import 'package:dictionary/main_screen/search_area.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'food_drawer.dart';
import 'bottom_food_list.dart';
import 'popular_recipes.dart';

class FoodMainScreen extends StatefulWidget {
  FoodMainScreen({Key? key}) : super(key: key);

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {
  final TextEditingController searchWord = TextEditingController();
  final FocusNode searchWordNode = FocusNode();



  @override
  void dispose() {
    searchWord.dispose();
    searchWordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    int columnCount = 3;

    final foodList = Provider.of<FoodDataProvider>(context).foodListData;
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Cook at home like a chief',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                ),
                SearchArea(
                  searchedWord: searchWord,
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: PopularRecipes(foodList: foodList),
          ),
          Expanded(
            flex: 2,
            child: BottomFoodList(
                w: w, columnCount: columnCount, foodList: foodList),
          ),
        ],
      ),
      drawer: FoodDrawer(dataToBeFilter: foodList),
    );
  }
}
