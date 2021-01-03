import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';


class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_tasklist_sqflite');
    var database = await openDatabase(path, version: 1, onCreate: _onCreatingDatabase);
    return database;

    }
  _onCreatingDatabase(Database database, int version) async {
    await database.execute("CREATE TABLE goals(id INTEGER PRIMARY KEY, title TEXT, subtitle TEXT, description TEXT, deadline TEXT, finished INTEGER, dateAdded TEXT, color INTEGER)");
    await database.execute("CREATE TABLE plans(id INTEGER PRIMARY KEY, title TEXT, subtitle TEXT, description TEXT, deadline TEXT, finished INTEGER, dateAdded TEXT, color INTEGER)");
    await database.execute("CREATE TABLE ideas(id INTEGER PRIMARY KEY, title TEXT, subtitle TEXT, description TEXT, dateAdded TEXT, color INTEGER)");

  }
}