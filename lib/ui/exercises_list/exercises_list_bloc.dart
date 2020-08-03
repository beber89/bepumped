import 'package:bloc/bloc.dart';
import 'package:bepumped/model/exercise/exercise.dart';
import 'exercises_list.dart';

class ExercisesListBloc extends Bloc<ExercisesListEvent, ExercisesListState> {


  ExercisesListBloc() : super() {
    // TODO: Handle error caseFetchNextResultPage
    add(InitLoadExerciseListEvent());
  }

  void addExerciseEvent(Exercise exercise) {
    add(AddExerciseEvent((b)=>b
    ..exercise=exercise.toBuilder()
    ));
  }

  void deleteExerciseEvent(int i) {
    add(DeleteExerciseEvent((b)=>b
    ..index=i
    ));
  }

  @override
  ExercisesListState get initialState => ExercisesListState.initial();

  @override
  Stream<ExercisesListState> mapEventToState(ExercisesListEvent event) async* {

    if (event is InitLoadExerciseListEvent) {
      yield ExercisesListState.loading();
      final List<Exercise> exes = [
        Exercise((b)=>b
        ..name = "Bicep Curls"
        ..category = ExerciseCategory.RESISTANCE
        ),
        Exercise((b)=>b
        ..name = "Db Row"
        ..category = ExerciseCategory.RESISTANCE
        ),
        Exercise((b)=>b
        ..name = "Crunches"
        ..category = ExerciseCategory.REPITITION
        )
      ];
      yield ExercisesListState.success(exes);
    }
    
    else if (event is AddExerciseEvent) {
      List<Exercise> exList = state.exercisesList.toList();
      exList.add(event.exercise);
      yield ExercisesListState.success(exList);
    }
    else if (event is DeleteExerciseEvent) {
      List<Exercise> exList = state.exercisesList.toList();
      exList.removeAt(event.index);
      yield ExercisesListState.success(exList);
    }
  }
}