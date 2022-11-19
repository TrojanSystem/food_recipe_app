import 'package:dictionary/data/food_data_provider.dart';

import 'package:dictionary/main_screen/search_area.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custome_search.dart';
import 'food_drawer.dart';
import 'bottom_food_list.dart';
import 'popular_recipes.dart';

class FoodMainScreen extends StatefulWidget {
  FoodMainScreen({Key? key}) : super(key: key);

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {
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
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate(),);
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.92,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Cook at home like a chief',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: PopularRecipes(popularFoodList: foodList),
              ),
              Expanded(
                flex: 3,
                child: BottomFoodList(
                    w: w, columnCount: columnCount, foodList: foodList),
              ),
            ],
          ),
        ),
      ),
      drawer: FoodDrawer(dataToBeFilter: foodList),
    );
  }
}
