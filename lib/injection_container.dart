import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:bepumped/ui/exercises_list/exercises_list.dart';


void initKiwi() {
  kiwi.Container()
    ..registerSingleton((c) => ExercisesListBloc());
}