import 'package:WebApp/widgets/Navigation_Bar/nav_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({this.item});
  final String item;
  @override
  Widget build(BuildContext context) {
    return NavBarItem(title: item);
  }
}
