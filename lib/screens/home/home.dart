import 'package:cooksy/widgets/card_section.dart';
import 'package:cooksy/widgets/recipe_card.dart';
import 'package:cooksy/widgets/section.dart';
import 'package:cooksy/constants/recipes.dart';
import 'package:flutter/material.dart';
import './widgets/header_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: HeaderCard("Recipe", "of the day"), 
                          width: 245,
                        ),
                        SizedBox(width: 16),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 245,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CardSection("Cook", "like pro",
                                child: Text("Thermomix  advanced tips and tricks",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                              SizedBox(height: 16),
                              CardSection("Check", "new updates"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SectionWidget("René Redzepi", "recommends you"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RecipeCard(
                        Recipe("Vegan Thai Curry Soup", "Spice lovers will slurp up this soup in seconds. Featuring chili powder, smoked paprika, and cayenne pepper, every bowl brings the heat.", timeInMinutes: 50, serving: 4)
                      ),
                    ),
                  ],
                ),
                OutlinedButton(onPressed: () { }, child: Text("Browse more recipes"),)
              ],
          ),
            ),
        ),
    );
  }
}
