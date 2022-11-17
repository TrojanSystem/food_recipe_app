import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../food_details/filtered_food.dart';

class FoodDrawer extends StatelessWidget {
  FoodDrawer({super.key, required this.dataToBeFilter});

  int checkIsIncome = 0;
  List dataToBeFilter;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
          child: CircleAvatar(
            radius: 60,
            child: Image.asset('images/hat.png'),
          ),
        ),
        const Text(
          'Cook UR Self',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 150,
        ),
        foodFilter(
          title: 'High Protein',
          filteredFood: () {
            checkIsIncome == 1
                ? Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => FilterFood(
                        filteringQuery: 'High Protein',
                        foodList: dataToBeFilter,
                      ),
                    ),
                  )
                : Navigator.pop(context);
          },
        ),
        foodFilter(
          title: 'Low Carb',
          filteredFood: () {
            checkIsIncome == 1
                ? Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => FilterFood(
                        filteringQuery: 'Low Carb',
                        foodList: dataToBeFilter,
                      ),
                    ),
                  )
                : Navigator.pop(context);
          },
        ),
        foodFilter(
          title: 'Low Fat',
          filteredFood: () {
            checkIsIncome == 1
                ? Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => FilterFood(
                        filteringQuery: 'Low Fat',
                        foodList: dataToBeFilter,
                      ),
                    ),
                  )
                : Navigator.pop(context);
          },
        ),
        foodFilter(
          title: 'High Calorie',
          filteredFood: () {
            checkIsIncome == 1
                ? Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => FilterFood(
                        filteringQuery: 'High Calorie',
                        foodList: dataToBeFilter,
                      ),
                    ),
                  )
                : Navigator.pop(context);
          },
        )
      ]),
    );
  }

  Padding foodFilter({required String title, required Function filteredFood}) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20),
                ),
                LiteRollingSwitch(
                  width: 90,
                  //initial value
                  value: false,
                  textOn: 'on',
                  textOff: 'off',
                  colorOn: Colors.green,
                  colorOff: Colors.red,
                  iconOn: FontAwesomeIcons.lightbulb,
                  iconOff: FontAwesomeIcons.lightbulb,
                  textSize: 16.0,
                  onChanged: (bool state) {
                    if (state == false) {
                      checkIsIncome = 0;
                    } else {
                      checkIsIncome = 1;
                    }
                  },
                  onTap: filteredFood,
                  onDoubleTap: () {},
                  onSwipe: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
