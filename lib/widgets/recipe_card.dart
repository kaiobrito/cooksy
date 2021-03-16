import 'package:cooksy/widgets/recipe_details.dart';
import 'package:cooksy/constants/recipes.dart';
import 'package:flutter/material.dart';

final recipeImage = AssetImage(
  "./assets/images/recipe02.png",
);

class RecipeCard extends StatelessWidget {
  final Recipe _recipe;

  RecipeCard(this._recipe);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image(
                image: recipeImage,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(_recipe.title,
                    style: Theme.of(context).textTheme.headline6),
              ),
              Text(
                  _recipe.description),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: RecipeDetails(_recipe.timeInMinutes, _recipe.serving),
              ),
            ]),
          ),
    ));
  }
}
