import 'package:cooksy/components/cardSection.dart';
import 'package:flutter/material.dart';

final recipeImage = AssetImage(
  "./assets/images/recipe01.png",
);

class HeaderCardViewModel {
  String title, subtitle;
  String? detailsText;

  AssetImage? image;

  HeaderCardViewModel(
    this.title,
    this.subtitle, {
    this.detailsText,
    this.image,
  });
}

class HeaderCard extends StatelessWidget {
  final String _title, _subtitle;
  String? detailsText;

  AssetImage? image;

  HeaderCard(this._title, this._subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 245,
      child: CardSection(this._title, this._subtitle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Roasted Pumpkin Soup",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text("50 min",
                    style: Theme.of(context).textTheme.bodyText2),
                Text(
                  "4 ppl",
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Image(
              image: recipeImage,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
