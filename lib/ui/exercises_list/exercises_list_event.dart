library exercises_list_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:bepumped/model/exercise/exercise.dart';

part 'exercises_list_event.g.dart';

abstract class ExercisesListEvent {}

abstract class AddExerciseEvent extends ExercisesListEvent implements Built<AddExerciseEvent, AddExerciseEventBuilder> {
  // fields go here

  Exercise get exercise;

  AddExerciseEvent._();

  factory AddExerciseEvent([updates(AddExerciseEventBuilder b)]) = _$AddExerciseEvent;
}

abstract class DeleteExerciseEvent extends ExercisesListEvent implements Built<DeleteExerciseEvent, DeleteExerciseEventBuilder> {
  // fields go here

  int get index;

  DeleteExerciseEvent._();

  factory DeleteExerciseEvent([updates(DeleteExerciseEventBuilder b)]) = _$DeleteExerciseEvent;
}

class InitLoadExerciseListEvent extends ExercisesListEvent{}