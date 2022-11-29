import 'package:dictionary/data/food_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

import '../data/recipe_data.dart';
import '../food_details/food_detail.dart';

class BottomFoodList extends StatelessWidget {
  const BottomFoodList({
    Key? key,
    required this.w,
    required this.columnCount,
    required this.foodList,
  }) : super(key: key);

  final double w;
  final int columnCount;
  final List<FoodModel> foodList;

  @override
  Widget build(BuildContext context) {
    final yearFilter = Provider.of<RecipeData>(context).expenseList;
    //   foodList.shuffle();
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: foodList.length,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(w / 60),
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
                      MaterialPageRoute(builder: (ctx) {
                        final checker = yearFilter
                            .where((element) =>
                                element.itemIndex == foodList[index].itemIndex)
                            .toList();
                        final x = checker.map((e) => e).toList();
                        return FoodDetail(
                          checker: x.isEmpty ? false : x.first.isFavorite,
                          detailData: foodList[index],
                          fav: yearFilter,
                        );
                      }),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: w / 30, left: w / 60, right: w / 60),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                              borderRadius: BorderRadius.circular(10),
                              clipBehavior: Clip.antiAlias,
                              child: FancyShimmerImage(
                                imageUrl: foodList[index].hostedLargeUrl,
                                errorWidget: Image.network(
                                    'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                                shimmerBaseColor: Colors.greenAccent,
                                shimmerHighlightColor: Colors.grey,
                                shimmerBackColor: Colors.greenAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodList[index].displayName,
                                  style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'by: Surafel Terefe',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.access_time,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(foodList[index].totalTime),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      const Icon(
                                        Icons.emoji_emotions_outlined,
                                        color: Colors.green,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(foodList[index].difficulty),
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
    );
  }
}
