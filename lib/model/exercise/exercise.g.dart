// GENERATED CODE - DO NOT MODIFY BY HAND

part of exercise;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExerciseCategory _$RESISTANCE = const ExerciseCategory._('RESISTANCE');
const ExerciseCategory _$REPITITION = const ExerciseCategory._('REPITITION');
const ExerciseCategory _$DURATION = const ExerciseCategory._('DURATION');

ExerciseCategory _$valueOf(String name) {
  switch (name) {
    case 'RESISTANCE':
      return _$RESISTANCE;
    case 'REPITITION':
      return _$REPITITION;
    case 'DURATION':
      return _$DURATION;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ExerciseCategory> _$values =
    new BuiltSet<ExerciseCategory>(const <ExerciseCategory>[
  _$RESISTANCE,
  _$REPITITION,
  _$DURATION,
]);

Serializer<ExerciseCategory> _$exerciseCategorySerializer =
    new _$ExerciseCategorySerializer();
Serializer<Exercise> _$exerciseSerializer = new _$ExerciseSerializer();

class _$ExerciseCategorySerializer
    implements PrimitiveSerializer<ExerciseCategory> {
  @override
  final Iterable<Type> types = const <Type>[ExerciseCategory];
  @override
  final String wireName = 'ExerciseCategory';

  @override
  Object serialize(Serializers serializers, ExerciseCategory object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ExerciseCategory deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExerciseCategory.valueOf(serialized as String);
}

class _$ExerciseSerializer implements StructuredSerializer<Exercise> {
  @override
  final Iterable<Type> types = const [Exercise, _$Exercise];
  @override
  final String wireName = 'Exercise';

  @override
  Iterable<Object> serialize(Serializers serializers, Exercise object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(ExerciseCategory)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Exercise deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExerciseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(ExerciseCategory))
              as ExerciseCategory;
          break;
      }
    }

    return result.build();
  }
}

class _$Exercise extends Exercise {
  @override
  final String name;
  @override
  final String description;
  @override
  final ExerciseCategory category;

  factory _$Exercise([void Function(ExerciseBuilder) updates]) =>
      (new ExerciseBuilder()..update(updates)).build();

  _$Exercise._({this.name, this.description, this.category}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Exercise', 'name');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Exercise', 'category');
    }
  }

  @override
  Exercise rebuild(void Function(ExerciseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseBuilder toBuilder() => new ExerciseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Exercise &&
        name == other.name &&
        description == other.description &&
        category == other.category;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), description.hashCode), category.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Exercise')
          ..add('name', name)
          ..add('description', description)
          ..add('category', category))
        .toString();
  }
}

class ExerciseBuilder implements Builder<Exercise, ExerciseBuilder> {
  _$Exercise _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ExerciseCategory _category;
  ExerciseCategory get category => _$this._category;
  set category(ExerciseCategory category) => _$this._category = category;

  ExerciseBuilder();

  ExerciseBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _category = _$v.category;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ??
        new _$Exercise._(
            name: name, description: description, category: category);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
