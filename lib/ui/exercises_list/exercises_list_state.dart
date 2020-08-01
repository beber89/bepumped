import 'package:bepumped/model/exercise/exercise.dart';
import 'package:built_collection/built_collection.dart';


class ExercisesListState {
  bool _isLoading;
  BuiltList<Exercise> _exercisesList;

  ExercisesListState({bool isLoading, BuiltList<Exercise> exercisesList}) {
    this._isLoading = isLoading;
    this._exercisesList = exercisesList;
  }

  bool get isLoading => _isLoading;
  List<Exercise> get exercisesList => _exercisesList.asList() ;



  factory ExercisesListState.initial() {
    return ExercisesListState (isLoading: false, exercisesList: BuiltList<Exercise>());
  }

  factory ExercisesListState.loading() {
    return ExercisesListState (isLoading: true, exercisesList: BuiltList<Exercise>());
  }

  factory ExercisesListState.success(List<Exercise> exercisesList) {
    return ExercisesListState(isLoading: false, exercisesList: BuiltList<Exercise>(exercisesList));
  }
}