import 'package:flutter/material.dart';

final double appBarHeight = 80;

class CookskyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CookskyAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      height: appBarHeight,
      padding: EdgeInsets.only(left: 16, right: 16, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(this.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
