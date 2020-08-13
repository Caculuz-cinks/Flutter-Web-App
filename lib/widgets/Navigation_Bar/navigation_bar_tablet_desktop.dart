import 'package:WebApp/widgets/Navigation_Bar/nav_action.dart';
import 'package:WebApp/widgets/Navigation_Bar/nav_bar_logo.dart';
import 'package:WebApp/widgets/Navigation_Bar/nav_item.dart';
import 'package:flutter/material.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavIcon(),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NavBarItem(
                title: 'Home',
              ),
              SizedBox(
                width: 30,
              ),
              NavBarItem(
                title: 'Benefit',
              ),
              SizedBox(
                width: 30,
              ),
              NavBarItem(
                title: 'Pricing',
              ),
              SizedBox(
                width: 30,
              ),
              NavBarItem(
                title: 'Blog',
              ),
              SizedBox(
                width: 30,
              ),
              NavAction(),
              SizedBox(
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
