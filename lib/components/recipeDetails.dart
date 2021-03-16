import 'package:cooksy/constants/recipes.dart';
import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final int _serving, _minutes;

  RecipeDetails(this._serving, this._minutes);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text("$_minutes min", style: Theme.of(context).textTheme.bodyText2)),
        Expanded(
          child: Text(
            "$_serving ppl",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        )
      ],
    );
  }
}
