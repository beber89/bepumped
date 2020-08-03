// GENERATED CODE - DO NOT MODIFY BY HAND

part of exercises_list_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddExerciseEvent extends AddExerciseEvent {
  @override
  final Exercise exercise;

  factory _$AddExerciseEvent(
          [void Function(AddExerciseEventBuilder) updates]) =>
      (new AddExerciseEventBuilder()..update(updates)).build();

  _$AddExerciseEvent._({this.exercise}) : super._() {
    if (exercise == null) {
      throw new BuiltValueNullFieldError('AddExerciseEvent', 'exercise');
    }
  }

  @override
  AddExerciseEvent rebuild(void Function(AddExerciseEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddExerciseEventBuilder toBuilder() =>
      new AddExerciseEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddExerciseEvent && exercise == other.exercise;
  }

  @override
  int get hashCode {
    return $jf($jc(0, exercise.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddExerciseEvent')
          ..add('exercise', exercise))
        .toString();
  }
}

class AddExerciseEventBuilder
    implements Builder<AddExerciseEvent, AddExerciseEventBuilder> {
  _$AddExerciseEvent _$v;

  ExerciseBuilder _exercise;
  ExerciseBuilder get exercise => _$this._exercise ??= new ExerciseBuilder();
  set exercise(ExerciseBuilder exercise) => _$this._exercise = exercise;

  AddExerciseEventBuilder();

  AddExerciseEventBuilder get _$this {
    if (_$v != null) {
      _exercise = _$v.exercise?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddExerciseEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddExerciseEvent;
  }

  @override
  void update(void Function(AddExerciseEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddExerciseEvent build() {
    _$AddExerciseEvent _$result;
    try {
      _$result = _$v ?? new _$AddExerciseEvent._(exercise: exercise.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'exercise';
        exercise.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AddExerciseEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DeleteExerciseEvent extends DeleteExerciseEvent {
  @override
  final int index;

  factory _$DeleteExerciseEvent(
          [void Function(DeleteExerciseEventBuilder) updates]) =>
      (new DeleteExerciseEventBuilder()..update(updates)).build();

  _$DeleteExerciseEvent._({this.index}) : super._() {
    if (index == null) {
      throw new BuiltValueNullFieldError('DeleteExerciseEvent', 'index');
    }
  }

  @override
  DeleteExerciseEvent rebuild(
          void Function(DeleteExerciseEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteExerciseEventBuilder toBuilder() =>
      new DeleteExerciseEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteExerciseEvent && index == other.index;
  }

  @override
  int get hashCode {
    return $jf($jc(0, index.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DeleteExerciseEvent')
          ..add('index', index))
        .toString();
  }
}

class DeleteExerciseEventBuilder
    implements Builder<DeleteExerciseEvent, DeleteExerciseEventBuilder> {
  _$DeleteExerciseEvent _$v;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  DeleteExerciseEventBuilder();

  DeleteExerciseEventBuilder get _$this {
    if (_$v != null) {
      _index = _$v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteExerciseEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DeleteExerciseEvent;
  }

  @override
  void update(void Function(DeleteExerciseEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DeleteExerciseEvent build() {
    final _$result = _$v ?? new _$DeleteExerciseEvent._(index: index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
