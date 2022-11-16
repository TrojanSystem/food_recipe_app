import 'package:dictionary/data/word_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.detailData.hostedLargeUrl),
                          fit: BoxFit.cover),
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
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Text(
                                    widget.detailData.displayName,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.bookmark_border,
                                        size: 30,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.share_outlined,
                                        size: 30,
                                        color: Colors.grey[400],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: TabBar(
                            indicatorColor: Colors.black,
                            labelColor: Colors.red,
                            indicatorWeight: 3,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Ingredients'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Cooking Details'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Text('Nutrition'),
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
                              Ingredients(ingridents: widget.detailData),
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
                icon:const Icon(
                  Icons.arrow_back_outlined,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _isLiked = !_isLiked;
                  });
                },
                icon: Icon(
                  _isLiked ? Icons.favorite_border_outlined : Icons.favorite,
                  color:_isLiked?Colors.white: Colors.amber,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
