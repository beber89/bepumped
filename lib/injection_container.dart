import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:bepumped/ui/add_exercise/add_exercise.dart';
import 'package:bepumped/ui/exercises_list/exercises_list.dart';


void initKiwi() {
  kiwi.Container()
    ..registerFactory((c) => CheckerRepository())
    ..registerFactory((c) => CheckerBloc(c.resolve()));
}