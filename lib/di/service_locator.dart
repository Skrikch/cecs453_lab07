// Authors: Christos Georgakopoulos, Britney Ferguson
// Referenced from CodeLab5
import 'package:get_it/get_it.dart';
import 'package:cecs453_lab07/repository/note_repository.dart';

final getIt = GetIt.instance;

// Registers our NoteRepository as a singleton, only one instance can ever be opened
// Registering it as "Lazy" means it won't run until asked.
void setupLocator() {
  getIt.registerLazySingleton(() => NoteRepository());
}
