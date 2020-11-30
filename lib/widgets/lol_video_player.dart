import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LOLVideoPlayer extends StatefulWidget {
  final String videoUrl;

  LOLVideoPlayer({Key key, @required this.videoUrl}) : super(key: key);

  @override
  _LOLVideoPlayerState createState() => _LOLVideoPlayerState(videoUrl);
}

class _LOLVideoPlayerState extends State<LOLVideoPlayer> {
  final String videoUrl;
  VideoPlayerController _controller;
  Future<void> _initializedPlayerController;

  _LOLVideoPlayerState(this.videoUrl);

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(videoUrl)
      ..setLooping(true)
      .then((value) {
        _controller.play();
      });

    _initializedPlayerController = _controller.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: FutureBuilder(
            future: _initializedPlayerController,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // return VideoPlayer(_controller);
                return  VideoPlayer(_controller,);
              }

              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
