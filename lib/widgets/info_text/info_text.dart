import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Keep Track of Your Benefit\nat Pay Platform Payment',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xff152C5B),
                fontSize: 40),
          ),
          SizedBox(height: 20),
          Text(
            'Payment and budgeting digital business made simple',
            style: TextStyle(
              color: Color(0xff152C5B).withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
