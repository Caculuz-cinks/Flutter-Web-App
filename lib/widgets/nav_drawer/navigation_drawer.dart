import 'package:WebApp/widgets/Navigation_Bar/nav_item.dart';
import 'package:WebApp/widgets/nav_drawer/drawer_header.dart';

import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MyDrawerHeader(),
                    IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
              NavBarItem(title: 'Home'),
              SizedBox(
                height: 10,
              ),
              NavBarItem(title: 'Benefit'),
              SizedBox(
                height: 10,
              ),
              NavBarItem(title: 'Pricing'),
              SizedBox(
                height: 10,
              ),
              NavBarItem(title: 'Blog'),
            ],
          ),
        ),
      ),
    );
  }
}
