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
          margin: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.12,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '${ingredients.ingredient[index]['unit']}',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                    ),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 4.0, 8, 4),
                      child: Text(
                        '${ingredients.ingredient[index]['ingredient']}',
                        style:const TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 17),
                      ),
                    ),
                    subtitle:
                        Text('${ingredients.ingredient[index]['wholeLine']}'),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: MediaQuery.of(context).size.height * 0.12,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    'x ${ingredients.ingredient[index]['quantity']}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
