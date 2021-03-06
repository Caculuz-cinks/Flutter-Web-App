import 'package:WebApp/views/home/home_view_desktop.dart';
import 'package:WebApp/views/home/home_view_mobile.dart';
import 'package:WebApp/widgets/nav_drawer/navigation_drawer.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfomation) => Scaffold(
        drawer: sizingInfomation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Color(0xffF8F5FF),
        body: ScreenTypeLayout(
          mobile: HomeViewMobile(),
          desktop: HomeViewDesktop(),
        ),
      ),
    );
  }
}
