import 'package:WebApp/widgets/Navigation_Bar/nav_bar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () {}),
          NavIcon(),
        ],
      ),
    );
  }
}
