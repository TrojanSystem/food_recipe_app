import 'package:dictionary/data/food_model.dart';
import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key? key, required this.ingredients}) : super(key: key);
  final FoodModel ingredients;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.14,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 85,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'x ${ingredients.ingredient[index]['quantity']}',
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${ingredients.ingredient[index]['unit'] == 'teaspoon' ? 'tsp' : ingredients.ingredient[index]['unit']}',
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),

                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.72,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                  ),
                  color: Colors.white,
                ),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 4.0, 8, 4),
                    child: Text(
                      '${ingredients.ingredient[index]['ingredient']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 17),
                    ),
                  ),
                  subtitle:
                      Text('${ingredients.ingredient[index]['wholeLine']}'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
