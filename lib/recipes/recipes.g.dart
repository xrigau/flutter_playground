// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<RecipeSearchResponse> _$recipeSearchResponseSerializer =
    new _$RecipeSearchResponseSerializer();
Serializer<HitResponse> _$hitResponseSerializer = new _$HitResponseSerializer();
Serializer<RecipeResponse> _$recipeResponseSerializer =
    new _$RecipeResponseSerializer();

class _$RecipeSearchResponseSerializer
    implements StructuredSerializer<RecipeSearchResponse> {
  @override
  final Iterable<Type> types = const [
    RecipeSearchResponse,
    _$RecipeSearchResponse
  ];
  @override
  final String wireName = 'RecipeSearchResponse';

  @override
  Iterable serialize(Serializers serializers, RecipeSearchResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'q',
      serializers.serialize(object.q, specifiedType: const FullType(String)),
      'hits',
      serializers.serialize(object.hits,
          specifiedType:
              const FullType(BuiltList, const [const FullType(HitResponse)])),
    ];

    return result;
  }

  @override
  RecipeSearchResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RecipeSearchResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'q':
          result.q = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hits':
          result.hits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HitResponse)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$HitResponseSerializer implements StructuredSerializer<HitResponse> {
  @override
  final Iterable<Type> types = const [HitResponse, _$HitResponse];
  @override
  final String wireName = 'HitResponse';

  @override
  Iterable serialize(Serializers serializers, HitResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'recipe',
      serializers.serialize(object.recipe,
          specifiedType: const FullType(RecipeResponse)),
    ];

    return result;
  }

  @override
  HitResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new HitResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'recipe':
          result.recipe.replace(serializers.deserialize(value,
              specifiedType: const FullType(RecipeResponse)) as RecipeResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$RecipeResponseSerializer
    implements StructuredSerializer<RecipeResponse> {
  @override
  final Iterable<Type> types = const [RecipeResponse, _$RecipeResponse];
  @override
  final String wireName = 'RecipeResponse';

  @override
  Iterable serialize(Serializers serializers, RecipeResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RecipeResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RecipeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RecipeSearchResponse extends RecipeSearchResponse {
  @override
  final String q;
  @override
  final BuiltList<HitResponse> hits;

  factory _$RecipeSearchResponse(
          [void updates(RecipeSearchResponseBuilder b)]) =>
      (new RecipeSearchResponseBuilder()..update(updates)).build();

  _$RecipeSearchResponse._({this.q, this.hits}) : super._() {
    if (q == null)
      throw new BuiltValueNullFieldError('RecipeSearchResponse', 'q');
    if (hits == null)
      throw new BuiltValueNullFieldError('RecipeSearchResponse', 'hits');
  }

  @override
  RecipeSearchResponse rebuild(void updates(RecipeSearchResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeSearchResponseBuilder toBuilder() =>
      new RecipeSearchResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! RecipeSearchResponse) return false;
    return q == other.q && hits == other.hits;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, q.hashCode), hits.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecipeSearchResponse')
          ..add('q', q)
          ..add('hits', hits))
        .toString();
  }
}

class RecipeSearchResponseBuilder
    implements Builder<RecipeSearchResponse, RecipeSearchResponseBuilder> {
  _$RecipeSearchResponse _$v;

  String _q;
  String get q => _$this._q;
  set q(String q) => _$this._q = q;

  ListBuilder<HitResponse> _hits;
  ListBuilder<HitResponse> get hits =>
      _$this._hits ??= new ListBuilder<HitResponse>();
  set hits(ListBuilder<HitResponse> hits) => _$this._hits = hits;

  RecipeSearchResponseBuilder();

  RecipeSearchResponseBuilder get _$this {
    if (_$v != null) {
      _q = _$v.q;
      _hits = _$v.hits?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeSearchResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$RecipeSearchResponse;
  }

  @override
  void update(void updates(RecipeSearchResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RecipeSearchResponse build() {
    _$RecipeSearchResponse _$result;
    try {
      _$result = _$v ?? new _$RecipeSearchResponse._(q: q, hits: hits.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'hits';
        hits.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RecipeSearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HitResponse extends HitResponse {
  @override
  final RecipeResponse recipe;

  factory _$HitResponse([void updates(HitResponseBuilder b)]) =>
      (new HitResponseBuilder()..update(updates)).build();

  _$HitResponse._({this.recipe}) : super._() {
    if (recipe == null)
      throw new BuiltValueNullFieldError('HitResponse', 'recipe');
  }

  @override
  HitResponse rebuild(void updates(HitResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HitResponseBuilder toBuilder() => new HitResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! HitResponse) return false;
    return recipe == other.recipe;
  }

  @override
  int get hashCode {
    return $jf($jc(0, recipe.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HitResponse')..add('recipe', recipe))
        .toString();
  }
}

class HitResponseBuilder implements Builder<HitResponse, HitResponseBuilder> {
  _$HitResponse _$v;

  RecipeResponseBuilder _recipe;
  RecipeResponseBuilder get recipe =>
      _$this._recipe ??= new RecipeResponseBuilder();
  set recipe(RecipeResponseBuilder recipe) => _$this._recipe = recipe;

  HitResponseBuilder();

  HitResponseBuilder get _$this {
    if (_$v != null) {
      _recipe = _$v.recipe?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HitResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$HitResponse;
  }

  @override
  void update(void updates(HitResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HitResponse build() {
    _$HitResponse _$result;
    try {
      _$result = _$v ?? new _$HitResponse._(recipe: recipe.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recipe';
        recipe.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HitResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RecipeResponse extends RecipeResponse {
  @override
  final String label;

  factory _$RecipeResponse([void updates(RecipeResponseBuilder b)]) =>
      (new RecipeResponseBuilder()..update(updates)).build();

  _$RecipeResponse._({this.label}) : super._() {
    if (label == null)
      throw new BuiltValueNullFieldError('RecipeResponse', 'label');
  }

  @override
  RecipeResponse rebuild(void updates(RecipeResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipeResponseBuilder toBuilder() =>
      new RecipeResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! RecipeResponse) return false;
    return label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc(0, label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RecipeResponse')..add('label', label))
        .toString();
  }
}

class RecipeResponseBuilder
    implements Builder<RecipeResponse, RecipeResponseBuilder> {
  _$RecipeResponse _$v;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  RecipeResponseBuilder();

  RecipeResponseBuilder get _$this {
    if (_$v != null) {
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipeResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$RecipeResponse;
  }

  @override
  void update(void updates(RecipeResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RecipeResponse build() {
    final _$result = _$v ?? new _$RecipeResponse._(label: label);
    replace(_$result);
    return _$result;
  }
}
