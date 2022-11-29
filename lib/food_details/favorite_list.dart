import 'dart:convert';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/recipe_data.dart';
import 'food_detail.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key, required this.favoriteList});

  final List favoriteList;

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  String favItems = '';
  Map<String, dynamic> decodedMap = {};

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    int columnCount = 3;
    final yearFilter = Provider.of<RecipeData>(context).expenseList;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Favorite List",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: Theme.of(context).iconTheme,
          centerTitle: true,
          brightness: Brightness.dark),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: yearFilter.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/bookmark (1).png',
                        width: 150,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'No data...',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              : AnimationLimiter(
                  child: ListView.builder(
                    itemCount: yearFilter.length,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    padding: EdgeInsets.all(w / 120),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        duration: const Duration(milliseconds: 500),
                        columnCount: columnCount,
                        child: ScaleAnimation(
                          duration: const Duration(milliseconds: 900),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: FadeInAnimation(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => FoodDetail(
                                        detailData: widget.favoriteList[index],
                                        fav: yearFilter,
                                        checker: yearFilter[index].isFavorite),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: w / 30,
                                    left: w / 60,
                                    right: w / 60),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 40,
                                      spreadRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  height: w * 0.26,
                                  color: Colors.white,
                                  margin: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          clipBehavior: Clip.antiAlias,
                                          child: FancyShimmerImage(
                                            imageUrl: yearFilter[index]
                                                .hostedLargeUrl,
                                            errorWidget: Image.network(
                                                'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                                            shimmerBaseColor:
                                                Colors.greenAccent,
                                            shimmerHighlightColor: Colors.grey,
                                            shimmerBackColor:
                                                Colors.greenAccent,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              yearFilter[index].displayName,
                                              style: const TextStyle(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 20),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            const Text(
                                              'by: Surafel Terefe',
                                              style: TextStyle(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 15),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(Icons.access_time),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(yearFilter[index]
                                                      .totalTime),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  const Icon(Icons
                                                      .emoji_emotions_outlined),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(yearFilter[index]
                                                      .difficulty),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }
}
