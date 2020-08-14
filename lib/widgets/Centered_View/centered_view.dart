import 'package:flutter/material.dart';

class CentredView extends StatelessWidget {
  CentredView({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        child: child,
        constraints: BoxConstraints(
          maxWidth: 3000,
        ),
      ),
    );
  }
}
