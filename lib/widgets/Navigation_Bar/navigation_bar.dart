import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: 150,
            child: Image.asset('images/logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              _NavBarItem(
                title: 'Home',
              ),
              SizedBox(
                width: 30,
              ),
              _NavBarItem(
                title: 'Benefit',
              ),
              SizedBox(
                width: 30,
              ),
              _NavBarItem(
                title: 'Pricing',
              ),
              SizedBox(
                width: 30,
              ),
              _NavBarItem(
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

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 10),
    );
  }
}
