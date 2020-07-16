import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';
import 'package:aishaa_app/utils/colors.dart';

class VideoMenu extends StatefulWidget {
  @override
  _VideoMenuState createState() => _VideoMenuState();
}

class _VideoMenuState extends State<VideoMenu> {
  String kajianVideoURL = "https://www.youtube.com/watch?v=ZNjhKmjhdNo";
  String videoURL = "https://www.youtube.com/watch?v=-ZXqA4BfX60";

  YoutubePlayerController _controller;
  YoutubePlayerController _kajianVideoController;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL),
        flags: YoutubePlayerFlags(autoPlay: false));

    _kajianVideoController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(kajianVideoURL),
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: TemaApp.pinkRoseColor,
            ),
            SizedBox(
              height: 20,
            ),
            YoutubePlayer(
              controller: _kajianVideoController,
            ),
            SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
