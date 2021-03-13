import 'package:cooksy/components/bottomNavBar.dart';
import 'package:cooksy/screens/home/home.dart';
import 'package:flutter/material.dart';

class MainTabRouter extends StatefulWidget {
  @override
  _MainTabRouterState createState() => _MainTabRouterState();
}

class _MainTabRouterState extends State<MainTabRouter> {
  int _selectedIndex = 0;

  get tabs {
    return [
      HomeScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavBarWidget(_selectedIndex),
        body: Center(child: tabs[_selectedIndex]),
      ),
    );
  }
}
