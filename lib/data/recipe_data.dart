
import 'package:dictionary/data/food_model.dart';
import 'package:dictionary/data/food_recipe_database.dart';
import 'package:flutter/material.dart';


class RecipeData extends ChangeNotifier {
  DatabaseExpense db = DatabaseExpense();

  bool isIncome = false;

  bool _isLoading = true;

  List<FavoriteModel> _expenseList = [];

  List<FavoriteModel> get expenseList => _expenseList;

  bool get isLoading => _isLoading;

  void updaterChanger(bool state) {
    isIncome = state;
    //  notifyListeners();
  }

  Future loadExpenseList() async {
    _isLoading = true;
    notifyListeners();
    _expenseList = await db.getTasks();
    _isLoading = false;
    notifyListeners();
  }

  Future addExpenseList(FavoriteModel task) async {
    await db.insertTask(task);
    await loadExpenseList();
    notifyListeners();
  }

  Future updateExpenseList(FavoriteModel task) async {
    await db.updateTaskList(task);
    await loadExpenseList();
    notifyListeners();
  }

  Future deleteExpenseList(int task) async {
    await db.deleteTask(task);
    await loadExpenseList();
    notifyListeners();
  }


}
