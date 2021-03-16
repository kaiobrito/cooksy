import 'package:cooksy/routes/main_tab_router.dart';
import 'package:cooksy/screens/intro.dart';
import 'package:flutter/material.dart';

class MainRouter extends StatefulWidget {
  @override
  _MainRouterState createState() => _MainRouterState();
}

class _MainRouterState extends State<MainRouter> {
  var showIntro = true;

  hideIntro() {
    setState(() {
      showIntro = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showIntro) {
      return IntroScreen(hideIntro);
    }
    return MainTabRouter();
  }
}
