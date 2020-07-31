// GENERATED CODE - DO NOT MODIFY BY HAND

part of exercise;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Exercise> _$exerciseSerializer = new _$ExerciseSerializer();

class _$ExerciseSerializer implements StructuredSerializer<Exercise> {
  @override
  final Iterable<Type> types = const [Exercise, _$Exercise];
  @override
  final String wireName = 'Exercise';

  @override
  Iterable<Object> serialize(Serializers serializers, Exercise object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Exercise deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new ExerciseBuilder().build();
  }
}

class _$Exercise extends Exercise {
  factory _$Exercise([void Function(ExerciseBuilder) updates]) =>
      (new ExerciseBuilder()..update(updates)).build();

  _$Exercise._() : super._();

  @override
  Exercise rebuild(void Function(ExerciseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseBuilder toBuilder() => new ExerciseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exercise;
  }

  @override
  int get hashCode {
    return 56492608;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Exercise').toString();
  }
}

class ExerciseBuilder implements Builder<Exercise, ExerciseBuilder> {
  _$Exercise _$v;

  ExerciseBuilder();

  @override
  void replace(Exercise other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Exercise;
  }

  @override
  void update(void Function(ExerciseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Exercise build() {
    final _$result = _$v ?? new _$Exercise._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
