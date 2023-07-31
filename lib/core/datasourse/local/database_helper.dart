import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  Future<Database> initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'rick_and_morty.db');

    final database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''CREATE TABLE IF NOT EXISTS 
                        setting (id INTEGER PRIMARY KEY AUTOINCREMENT,)''');
      },
    );
    return database;
  }
}
