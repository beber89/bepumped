library exercise;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:bepumped/model/serializers.dart';

part 'exercise.g.dart';


class ExerciseCategory extends EnumClass {
  /// Example of how to make an [EnumClass] serializable.
  ///
  /// Declare a static final [Serializers] field called `serializer`.
  /// The built_value code generator will provide the implementation. You need
  /// to do this for every type you want to serialize.
  static Serializer<ExerciseCategory> get serializer => _$exerciseCategorySerializer;

  static const ExerciseCategory RESISTANCE = _$RESISTANCE;
  static const ExerciseCategory REPITITION = _$REPITITION;
  static const ExerciseCategory DURATION = _$DURATION;

  const ExerciseCategory._(String name) : super(name);

  static BuiltSet<ExerciseCategory> get values => _$values;
  static ExerciseCategory valueOf(String name) => _$valueOf(name);
}

abstract class Exercise implements Built<Exercise, ExerciseBuilder> {
  // fields go here

  String get name;
  @nullable String get description;
  ExerciseCategory get category;

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