import 'package:flutter/material.dart';
import 'package:bepumped/ui/exercises_list/exercises_list.dart';
import 'package:bepumped/common/dialog_entry.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bepumped/model/exercise/exercise.dart';

class ExercisesListPage extends StatelessWidget {
  Widget build(BuildContext context) {
    ExercisesListBloc _bloc = BlocProvider.of<ExercisesListBloc>(context);
    return BlocBuilder(
        bloc: _bloc,
        builder: (ctx, ExercisesListState state) {
          return Scaffold(
      appBar: AppBar(
        title: Text("Exercises"),
      ),
      body: Center(
        child: _buildList(ctx, _bloc, state),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showMaterialDialog(context, _bloc, state),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
        });
  }

  Widget _buildList(BuildContext context, ExercisesListBloc bloc, ExercisesListState state) {
    if(state.isLoading) return CircularProgressIndicator();
    return ListView.builder(
          itemCount: state.exercisesList.length,
          itemBuilder: (BuildContext ctx, int i){
            return Dismissible(
              key: Key("exercise_item_$i"),
              onDismissed: (direction) {
                bloc.deleteExerciseEvent(i);
              },
              child: ListTile(
                title: Text(state.exercisesList[i].name),
                leading: Icon(Icons.grain),
                trailing: Text(state.exercisesList[i].category.toString()),
              ),
            )
            ;
          }, 
        );
  }
  _showMaterialDialog( BuildContext context, ExercisesListBloc bloc, ExercisesListState state) {
    showDialog(
      context: context,
      builder: (_) => DialogEntry(
        onSend: (String name, String description, String category){
          bloc.addExerciseEvent(
            Exercise((b)=>b
              ..name=name
              ..category=ExerciseCategory.valueOf(category.toUpperCase())
              ..description=description
            )
          );
          Navigator.of(context).pop();
        }
      )
    );
  }
}

