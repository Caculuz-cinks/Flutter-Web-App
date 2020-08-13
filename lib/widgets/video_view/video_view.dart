import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 700,
      ),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          // color: Color(0xffF8F7F9),
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
