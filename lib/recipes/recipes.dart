import 'dart:async';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_playground/recipes/constants.dart';
import 'package:flutter_playground/recipes/serializers.dart';
import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';

part 'recipes.g.dart';

@immutable
class Recipe {
  final String title;
  Recipe(this.title);
}

class RecipesModel extends Model {
  List<Recipe> _recipes = List<Recipe>();

  List<Recipe> get recipes => List.unmodifiable(_recipes);

  bool get isEmpty => recipes.isEmpty;

  set recipes(List<Recipe> recipes) {
    _recipes = List.unmodifiable(recipes);
    notifyListeners();
  }
}

class RecipesService {
  Future<List<Recipe>> recipes() => http.get(RECIPES_TEST_URL).then(_mapToRecipes);

  List<Recipe> _mapToRecipes(http.Response response) {
    RecipeSearchResponse result = serializers.deserialize(json.decode(response.body), specifiedType: FullType(RecipeSearchResponse));
    return result.hits.map((HitResponse hitResponse) => Recipe(hitResponse.recipe.label)).toList();
  }
}

abstract class RecipeSearchResponse implements Built<RecipeSearchResponse, RecipeSearchResponseBuilder> {
  static Serializer<RecipeSearchResponse> get serializer => _$recipeSearchResponseSerializer;

  String get q;
  BuiltList<HitResponse> get hits;

  factory RecipeSearchResponse([updates(RecipeSearchResponseBuilder b)]) = _$RecipeSearchResponse;
  RecipeSearchResponse._();
}

abstract class HitResponse implements Built<HitResponse, HitResponseBuilder> {
  static Serializer<HitResponse> get serializer => _$hitResponseSerializer;

  RecipeResponse get recipe;

  factory HitResponse([updates(HitResponseBuilder b)]) = _$HitResponse;
  HitResponse._();
}

abstract class RecipeResponse implements Built<RecipeResponse, RecipeResponseBuilder> {
  static Serializer<RecipeResponse> get serializer => _$recipeResponseSerializer;

  String get label;

  factory RecipeResponse([updates(RecipeResponseBuilder b)]) = _$RecipeResponse;
  RecipeResponse._();
}
