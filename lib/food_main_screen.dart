import 'package:dictionary/food_data_provider.dart';
import 'package:dictionary/popular_recipes.dart';
import 'package:dictionary/search_area.dart';
import 'package:dictionary/word_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodMainScreen extends StatefulWidget {
  FoodMainScreen({Key? key}) : super(key: key);

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {
  final TextEditingController searchWord = TextEditingController();
  final FocusNode searchWordNode = FocusNode();

  bool _isLoading = false;

  getFood() async {
    setState(() {
      _isLoading = false;
    });
    //foodLists = await FoodDataProvider.foodProvider();
    setState(() {
      _isLoading = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFood();
  }

  @override
  void dispose() {
    searchWord.dispose();
    searchWordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final foodList = Provider.of<FoodDataProvider>(context).foodListData;
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
            child: PopularRecipes(foodList: foodList),
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

