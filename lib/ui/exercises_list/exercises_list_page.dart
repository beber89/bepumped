import 'package:flutter/material.dart';
import 'package:bepumped/model/exercise/exercise.dart';



final List<Exercise> _exercises = [
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

class ExercisesListPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercises"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _exercises.length,
          itemBuilder: (BuildContext ctx, int i){
            return ListTile(
              title: Text(_exercises[i].name),
              leading: Icon(Icons.grain),
              trailing: Text(_exercises[i].category.toString())
            );
          }, 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

