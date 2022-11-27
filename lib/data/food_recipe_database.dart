import 'package:dictionary/data/food_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseExpense {
  Future<Database> database() async {
    return openDatabase(
      join(await getDatabasesPath(), 'recipeList.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE recipeList(id INTEGER PRIMARY KEY, isFavorite int,displayName TEXT,hostedLargeUrl TEXT,totalTime TEXT,difficulty, TEXT,itemIndex int, category TEXT)''',
        );
      },
      version: 1,
    );
  }

  Future<int> insertTask(FavoriteModel task) async {
    Database db = await database();
    int data = await db.insert('recipeList', task.toMap());

    return data;
  }

  Future<List<FavoriteModel>> getTasks() async {
    Database db = await database();
    var tasks = await db.query('recipeList');
    List<FavoriteModel> tasksList = tasks.isNotEmpty
        ? tasks.map((e) => FavoriteModel.fromMap(e)).toList()
        : [];
    return tasksList;
  }

  Future<bool> updateTaskList(FavoriteModel item) async {
    final Database db = await database();
    final rows = await db.update(
      'recipeList',
      item.toMap(),
      where: 'itemIndex = ?',
      whereArgs: [item.itemIndex],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return rows > 0;
  }

  Future<void> deleteTask(int id) async {
    Database _db = await database();
    await _db.rawDelete("DELETE FROM recipeList WHERE itemIndex = '$id'");
  }
}
