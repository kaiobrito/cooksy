import 'package:cooksy/routes/mainRouter.dart';
import 'package:cooksy/widgets/app-bar.dart';
import 'package:flutter/material.dart';
import 'constants/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: Scaffold(
        appBar: CookskyAppBar("Cooksy"),
        body: Container(
          color: theme.backgroundColor,
          height: double.infinity,
          width: double.infinity,
          child: MainRouter()
        ),
      )
    );
  }
}
