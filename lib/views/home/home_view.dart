import 'package:WebApp/widgets/Centered%20View/centered_view.dart';
import 'package:WebApp/widgets/Navigation%20Bar/navigation_bar.dart';
import 'package:WebApp/widgets/info_text/info_text.dart';
import 'package:WebApp/widgets/video_view/video_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController _controller;
  double _offset = 0;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              controller: _controller,
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
                    VideoView()
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            height: MediaQuery.of(context).size.height,
            width: 20,
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width - 20),
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Container(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                  child: Container(
                    height: 40,
                    width: 15,
                    margin:
                        EdgeInsets.only(left: 5.0, right: 5.0, top: _offset),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                  ),
                  onVerticalDragUpdate: (dragUpdate) {
                    _controller.position
                        .moveTo(dragUpdate.globalPosition.dy * 3.5);
                    setState(() {
                      if (dragUpdate.globalPosition.dy >= 0) {
                        _offset = dragUpdate.globalPosition.dy;
                      }
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
