import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'ui/exercises_list/exercises_list.dart';

void main() {
  initKiwi();
  runApp(App());
} 

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}
class _AppState extends State<App> {
  // This widget is the root of your application.
  ExercisesListBloc _bloc = kiwi.Container().resolve<ExercisesListBloc>() ;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesListBloc>(
      create: (context) => _bloc,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          "/": (context) => ExercisesListPage()
        },
      )
    );
  }

  @override
  void dispose() {
    _bloc.drain();
    super.dispose();
  }
}