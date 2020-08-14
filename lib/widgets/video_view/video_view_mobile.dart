import 'package:WebApp/responsiveness/config.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoViewMobile extends StatefulWidget {
  @override
  _VideoViewState createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoViewMobile> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

    _initializeVideoPlayerFuture = _controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 700,
          ),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xfFF5F3F9).withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            VideoPlayer(_controller),
                            Positioned(
                              child: VideoProgressIndicator(
                                _controller,
                                allowScrubbing: true,
                              ),
                            ),
                          ],
                        ));
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: Config.yMargin(context, 130),
          left: Config.xMargin(context, 110),
          child: Container(
            child: RawMaterialButton(
              constraints: BoxConstraints(minWidth: 36.0, minHeight: 36.0),
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              fillColor: Color(0xffCDCFCD).withOpacity(0.5),
              hoverColor: Color(0xffD2D2D2),
              elevation: 0.0,
              hoverElevation: 0.0,
            ),
          ),
        )
      ],
    );
  }
}
