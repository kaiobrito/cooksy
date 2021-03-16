import 'package:cooksy/widgets/section.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  final String _title, _subtitle;
  final Widget? child;

  CardSection(this._title, this._subtitle, {this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionWidget(_title, _subtitle),
                  if (child != null) ...[
                    SizedBox(
                      height: 24,
                    ),
                    child!
                  ]
                ]),
          ),
        ));
  }
}
