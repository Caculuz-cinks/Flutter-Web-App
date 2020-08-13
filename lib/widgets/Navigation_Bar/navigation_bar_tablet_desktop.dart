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
              Text(
                'Login',
                style: TextStyle(color: Color(0xFf0045FF), fontSize: 10),
              ),
              SizedBox(
                width: 20,
              ),
              ButtonTheme(
                height: 28,
                minWidth: 40,
                child: FlatButton(
                    color: Color(0xFf0045FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    onPressed: () {},
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                    )),
              ),
              SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
