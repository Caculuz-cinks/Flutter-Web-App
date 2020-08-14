import 'package:WebApp/constants/app_color.dart';
import 'package:WebApp/widgets/nav_drawer/nav_drawer_action.dart';
import 'package:flutter/material.dart';

class DrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      alignment: Alignment.center,
      child: NavDrawerAction(),
    );
  }
}
