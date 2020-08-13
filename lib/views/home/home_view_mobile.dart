import 'package:WebApp/widgets/Centered_View/centered_view.dart';
import 'package:WebApp/widgets/Navigation_Bar/navigation_bar.dart';
import 'package:WebApp/widgets/info_text/info_text.dart';
import 'package:WebApp/widgets/video_view/video_view.dart';
import 'package:WebApp/widgets/video_view/video_view_mobile.dart';
import 'package:flutter/material.dart';

class HomeViewMobile extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F5FF),
      body: SingleChildScrollView(
        child: CentredView(
          child: Column(
            children: [
              NavigationBar(),
              SizedBox(
                height: 10,
              ),
              InfoText(),
              SizedBox(
                height: 15,
              ),
              VideoViewMobile()
            ],
          ),
        ),
      ),
    );
  }
}
