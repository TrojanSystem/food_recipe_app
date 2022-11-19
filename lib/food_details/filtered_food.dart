import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'food_detail.dart';

class FilterFood extends StatelessWidget {
  FilterFood({
    super.key,
    required this.filteringQuery,
    required this.foodList,
    required this.checkNumber,
    required this.identifier,
  });

  String filteringQuery;
  List foodList;
  int checkNumber;
  String identifier;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    int columnCount = 3;

    final filteredFoodList = identifier == 'filter'
        ? foodList
            .where(
                (element) => element.nutrition[checkNumber] == filteringQuery)
            .toList()
        : identifier == 'search'
            ? foodList
                .where((element) => element.displayName == filteringQuery)
                .toList()
            : foodList
                .where((element) => element.category == filteringQuery)
                .toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        elevation: 0,
        title: Text(
          '$filteringQuery Food',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: filteredFoodList.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/recipe (1).png',
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
                itemCount: filteredFoodList.length,
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => FoodDetail(
                                      detailData: filteredFoodList[index],
                                    )));
                          },
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
                                        imageUrl: filteredFoodList[index]
                                            .hostedLargeUrl,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filteredFoodList[index].displayName,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(Icons.access_time),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(filteredFoodList[index]
                                                  .totalTime),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              const Icon(Icons
                                                  .emoji_emotions_outlined),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(filteredFoodList[index]
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
    );
  }
}
