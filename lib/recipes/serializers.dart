library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_playground/recipes/recipes.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  RecipeSearchResponse,
  HitResponse,
  RecipeResponse,
])
//final Serializers serializers = _$serializers;
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
