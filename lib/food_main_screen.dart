import 'package:dictionary/popular_recipes.dart';
import 'package:dictionary/search_area.dart';
import 'package:flutter/material.dart';

class FoodMainScreen extends StatelessWidget {
  FoodMainScreen({Key? key}) : super(key: key);
  final TextEditingController searchWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                const Text(
                  'Cook at home like a chef',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
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
            child: PopularRecipes(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}


