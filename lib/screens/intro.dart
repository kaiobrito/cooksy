import 'package:flutter/material.dart';

final introImage = AssetImage("./assets/images/intro.png",);


class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Column(
              children: [
                Image(image: introImage,),
                SizedBox(height: 60,),
                Column(
                  children: [
                    Text("All the recipes on your fingertips", 
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(height: 10,),
                    Text("Cooking on Thermomix made easy",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () => {}, 
              child: Text("Let's start"),
            )
        ],),
      ),
    );
  }
}