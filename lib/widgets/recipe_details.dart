import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final int _serving, _minutes;

  RecipeDetails(this._serving, this._minutes);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.timer, size: 14, ),
            SizedBox(width: 5),
            Text("$_minutes min", style: Theme.of(context).textTheme.bodyText2),
          ],
        )),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.people_alt_outlined, size: 14, ),
              SizedBox(width: 5),
              Text(
                "$_serving ppl",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
