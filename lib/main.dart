import 'package:dictionary/data/food_data_provider.dart';
import 'package:dictionary/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/recipe_data.dart';
import 'main_screen/food_main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => RecipeData()..loadExpenseList(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => FoodDataProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Recipe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
