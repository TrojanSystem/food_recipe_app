import 'package:dictionary/data/food_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

import 'cooking_details.dart';

import 'ingredients.dart';
import 'nutrition.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key, required this.detailData});

  final FoodModel detailData;

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  bool _isLiked = false;

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    clipBehavior: Clip.antiAlias,
                    child: FancyShimmerImage(
                      imageUrl: widget.detailData.hostedLargeUrl,
                      errorWidget: Image.network(
                          'https://i0.wp.com/www.dobitaobyte.com.br/wp-content/uploads/2016/02/no_image.png?ssl=1'),
                      shimmerBaseColor: Colors.greenAccent,
                      shimmerHighlightColor: Colors.grey,
                      shimmerBackColor: Colors.greenAccent,boxFit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(224, 224, 224, 1),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    widget.detailData.displayName,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: share,
                                  icon: Icon(
                                    Icons.share_outlined,
                                    size: 30,
                                    color: Colors.grey[400],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: TabBar(
                            indicatorColor: Colors.black,
                            labelColor: Color.fromRGBO(216, 67, 21, 1),
                            indicatorWeight: 3,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Ingredients',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Cooking Details',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Nutrition',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            dragStartBehavior: DragStartBehavior.down,
                            children: [
                              Ingredients(ingredients: widget.detailData),
                              CookingDetails(cookingDetails: widget.detailData),
                              Nutrition(nutrition: widget.detailData),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                ),
              ),
            ),
            Positioned(
              top: 25,
              right: 20,
              child: IconButton(
                onPressed: () {
                  setState(
                    () {
                      _isLiked = !_isLiked;
                    },
                  );
                },
                icon: Icon(
                  _isLiked ? Icons.favorite_border_outlined : Icons.favorite,
                  color: _isLiked ? Colors.green[800] : Colors.green[800],
                  size: 35,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
