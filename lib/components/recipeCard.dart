
import 'package:flutter/material.dart';

final recipeImage = AssetImage(
  "./assets/images/recipe02.png",
);

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: recipeImage,),
                  SizedBox(height: 16,),
                  Text("Vegan Thai Curry Soup",
                    style: Theme.of(context).textTheme.headline6
                  ),
                  SizedBox(height: 16,),
                  Text("Spice lovers will slurp up this soup in seconds. Featuring chili powder, smoked paprika, and cayenne pepper, every bowl brings the heat."),
                ]),
          ),
        ));
  }
}