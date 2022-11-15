import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dictionary_hub.dart';
import 'dictionary_main_screen.dart';
import 'food_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Food Recipe',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home:   FoodMainScreen(),
      );

  }
}


