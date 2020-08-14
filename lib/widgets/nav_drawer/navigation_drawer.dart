import 'package:WebApp/widgets/nav_drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: <Widget>[
          DrawerItem(item: 'Home'),
          DrawerItem(item: 'Benefit'),
          DrawerItem(item: 'Pricing'),
          DrawerItem(item: 'Blog'),
        ],
      ),
    );
  }
}
