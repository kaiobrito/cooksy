import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final String _title, _subtitle;

  SectionWidget(this._title, this._subtitle);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _title,
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.start,
        ),
        Text(
          _subtitle,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 34,
              fontFamily: "WorkSans"),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.start
    );
  }
}
