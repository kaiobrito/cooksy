import 'package:cooksy/components/recipeCard.dart';
import 'package:flutter/material.dart';
import '../../constants/recipes.dart';

class MyRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        child: 
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: recipes.map((recipe) => 
                        RecipeCard(recipe.item1)
                      ).toList(),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Column(
                          children: recipes.map((recipe) => 
                            (recipe.item2 != null) ? RecipeCard(recipe.item2!) : SizedBox(height: 100, width: 100,)
                          ).toList(),
                        ),
                      ),
                    ),
              ],
            ),
          ),
      )
    );
  }
}