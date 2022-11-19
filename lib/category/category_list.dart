import 'package:dictionary/food_details/filtered_food.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'category_item.dart';

class CategoryList extends StatefulWidget {
   CategoryList({required this.categoryList});
List categoryList;
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List categoryItem = [
    {
      'color': Colors.red,
      'image': 'images/soup.jpg',
      'title': 'Soup',
      'navigate': () {},
    },
    {
      'color': Colors.red,
      'image': 'images/sandwich.jpg',
      'title': 'Sandwiches',
      'navigate': () {},
    },
    {
      'color': Colors.red,
      'image': 'images/snack&cocktailfood.jpg',
      'title': 'Snack & Cocktail',
      'navigate': () {},
    },
    {
      'color': Colors.red,
      'image': 'images/Rice.jpg',
      'title': 'Rice',
      'navigate': () {},
    },
    {
      'color': Colors.red,
      'image': 'images/homemade_pasta.jpg',
      'title': 'Homemade Pasta',
      'navigate': () {},
    },
    {
      'color': Colors.red,
      'image': 'images/Salad.jpg',
      'title': 'Salad',
      'navigate': () {},
    },
    {
      'color': Colors.red,
      'image': 'images/desserts.jpeg',
      'title': 'Desserts',
      'navigate': () {},
    },
  ];

  @override
  Widget build(BuildContext c) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    int columnCount = 2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("Food Category"),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: Theme
              .of(context)
              .iconTheme,
          centerTitle: true,
          brightness: Brightness.dark),
      body: AnimationLimiter(
        child: GridView.count(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(w / 60),
          crossAxisCount: columnCount,
          children: List.generate(
            categoryItem.length,
                (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: columnCount,
                child: ScaleAnimation(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: FadeInAnimation(
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: w / 30, left: w / 60, right: w / 60),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 40,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: CategoryItem(
                        color: categoryItem[index]['color'],
                        image: categoryItem[index]['image'],
                        title: categoryItem[index]['title'],
                        navigate: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (ctx) =>FilterFood(
                              filteringQuery:  categoryItem[index]['title'],
                              foodList:widget.categoryList,
                              checkNumber: 1,
                              identifier: 'category'),));
                        },
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
