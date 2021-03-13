import 'package:flutter/material.dart';
import '../constants/theme.dart';

class BottomNavBarItem extends StatelessWidget {
  final IconData? icon;
  final String? label;
  final bool selected;

  BottomNavBarItem({this.icon, this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: selected ? black : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: selected ? Colors.white : black.withOpacity(0.45),
          ),
          Text(
            label ?? "",
            style: Theme.of(context)
                .textTheme
                .caption!
                .apply(color: selected ? Colors.white : black),
          ),
        ],
      ),
    );
  }
}

class BottomNavBarWidget extends StatelessWidget {
  final int _selectedIndex;
  final Function(int index) _onTap;

  BottomNavBarWidget(this._selectedIndex, this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Container(
        height: 65,
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.white, offset: Offset(0, 1), blurRadius: 2),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => this._onTap(0),
              child: BottomNavBarItem(
                icon: Icons.lightbulb,
                label: "Inspirations",
                selected: _selectedIndex == 0,
              ),
            ),
            GestureDetector(
              onTap: () => this._onTap(1),
              child: BottomNavBarItem(
                icon: Icons.home,
                label: "Recipes",
                selected: _selectedIndex == 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
