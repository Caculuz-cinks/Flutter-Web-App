import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 10),
    );
  }
}
