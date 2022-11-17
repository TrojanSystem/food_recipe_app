import 'package:dictionary/data/food_model.dart';
import 'package:flutter/material.dart';

class Nutrition extends StatelessWidget {
  const Nutrition({super.key, required this.nutrition});

  final FoodModel nutrition;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Text(
                  'Nutrition Content',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: nutrition.nutrition.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              nutrition.nutrition[index],
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
