import 'package:WebApp/responsiveness/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InfoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? Config.textSize(context, 20)
                : Config.textSize(context, 40);
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? Config.textSize(context, 7)
                : Config.textSize(context, 15);
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Keep Track of Your Benefit\nat Pay Platform Payment',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xff152C5B),
                  fontSize: titleSize,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Payment and budgeting digital business made simple',
                style: TextStyle(
                  color: Color(0xff152C5B).withOpacity(0.5),
                  fontSize: descriptionSize,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
