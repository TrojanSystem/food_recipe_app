import 'package:dictionary/word_model.dart';
import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  Ingredients({Key? key, required this.ingridents}) : super(key: key);
  FoodModel ingridents;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                ingridents.ingredient[index]['ingredient'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            subtitle: Text(ingridents.ingredient[index]['wholeLine']),
            leading: Text(
              ingridents.ingredient[index]['unit'],
              style: TextStyle(
                color: Colors.green[800],
                fontFamily: 'FjallaOne',
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            trailing: Text(
              ingridents.ingredient[index]['quantity'].toString(),
              style: TextStyle(
                color: Colors.green[800],
                fontFamily: 'FjallaOne',
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        );
      },
    );
  }
}
