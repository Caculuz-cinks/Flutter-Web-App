import 'package:WebApp/constants/app_color.dart';
import 'package:WebApp/widgets/nav_drawer/nav_drawer_action.dart';
import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.white,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: NavDrawerAction(),
      ),
    );
  }
}
