library exercise;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:bepumped/model/serializers.dart';

part 'exercise.g.dart';

abstract class Exercise implements Built<Exercise, ExerciseBuilder> {
  // fields go here

  Exercise._();

  factory Exercise([updates(ExerciseBuilder b)]) = _$Exercise;

  String toJson() {
    return json.encode(serializers.serializeWith(Exercise.serializer, this));
  }

  static Exercise fromJson(String jsonString) {
    return serializers.deserializeWith(Exercise.serializer, json.decode(jsonString));
  }

  static Serializer<Exercise> get serializer => _$exerciseSerializer;
}