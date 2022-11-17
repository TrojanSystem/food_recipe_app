import 'package:dictionary/data/food_model.dart';
import 'package:flutter/material.dart';

class CookingDetails extends StatelessWidget {
  const CookingDetails({required this.cookingDetails});

  final FoodModel cookingDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const  Padding(
                padding:  EdgeInsets.all(8.0),
                child:  Text(
                  'Cooking',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: cookingDetails.preparationSteps.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('${index + 1}'),
                            Container(
                              margin: const EdgeInsets.only(left: 5),
                              decoration: const BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(color: Colors.green, width: 3),
                                ),
                              ),
                              height: 50,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 8),
                              margin: const EdgeInsets.only(bottom: 8),
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 50,
                              child: Text(
                                cookingDetails.preparationSteps[index],
                                overflow: TextOverflow.visible,
                                softWrap: true,
                              ),
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
