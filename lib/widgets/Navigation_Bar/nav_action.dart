import 'package:flutter/material.dart';

class NavAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
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
        ],
      ),
    );
  }
}
