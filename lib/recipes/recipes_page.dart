import 'package:flutter/material.dart';
import 'package:flutter_playground/recipes/recipes.dart';
import 'package:scoped_model/scoped_model.dart';

ThemeData recipesTheme() => ThemeData();

class RecipesPage extends StatelessWidget {
  static const String ROUTE = '/recipes';

  final RecipesService _recipesService;

  RecipesPage(this._recipesService);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Recipes'),
        ),
        body: ScopedModel<RecipesModel>(
          model: RecipesModel(),
          child: ScopedModelDescendant<RecipesModel>(builder: body),
        ),
      );

  Widget body(BuildContext context, Widget child, RecipesModel model) {
    if (model.isEmpty) {
      _recipesService.recipes().then((List<Recipe> recipes) => model.recipes = recipes);
      return CircularProgressIndicator();
    } else {
      return Text("Recipes: ${model.recipes}");
    }
  }
}
