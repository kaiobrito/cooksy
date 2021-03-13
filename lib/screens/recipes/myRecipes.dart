import 'package:cooksy/components/recipeCard.dart';
import 'package:flutter/material.dart';
import '../../constants/recipes.dart';

class MyRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: recipes.map((recipe) => RecipeCard(recipe)).toList(),
    );
  }
}