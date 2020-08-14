import 'package:flutter/material.dart';

class CentredView extends StatelessWidget {
  CentredView({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        child: child,
        constraints: BoxConstraints(
          maxWidth: 2000,
        ),
      ),
    );
  }
}
