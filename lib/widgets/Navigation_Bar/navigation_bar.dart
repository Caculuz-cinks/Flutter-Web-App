import 'package:WebApp/widgets/Navigation_Bar/navigation_bar_mobile.dart';
import 'package:WebApp/widgets/Navigation_Bar/navigation_bar_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      desktop: NavigationBarTabletDesktop(),
      tablet: NavigationBarMobile(),
    );
  }
}
