// Authors: Christos Georgakopoulos, Britney Ferguson
// Referenced from CodeLab5
import 'package:cecs453_lab07/data/db_helper.dart';
import 'package:cecs453_lab07/data/note_model.dart';

// The purpose of using Repository is how it allows us to dynamically swap
// Between Database implementations without actually touching any code from our UI
class NoteRepository {
  final DBHelper _dbHelper = DBHelper();

  Future<List<Note>> getNotes() => _dbHelper.getNotes();
  Future<int> insertNote(Note note) => _dbHelper.insertNote(note);
  Future<int> updateNote(Note note) => _dbHelper.updateNote(note);
  Future<int> deleteNote(int id) => _dbHelper.deleteNote(id);
}
