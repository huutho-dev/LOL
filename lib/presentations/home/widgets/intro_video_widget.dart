import 'package:flutter/material.dart';
import 'package:lol2/widgets/lol_video_player.dart';

class IntroVideoWidget extends StatelessWidget {
  final String introViewUrl =
      "https://lolstatic-a.akamaihd.net/frontpage/apps/prod/harbinger-l10-website/en-us/production/en-us/static/hero-0632cbf2872c5cc0dffa93d2ae8a29e8.webm";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LOLVideoPlayer(videoUrl: ""), //TODO
        Positioned.fill(
            bottom: 12,
            right: 12,
            child: Opacity(
              opacity: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/images/ic_logo_lol.png", width: 100),
              ),
            ))
      ],
    );
  }
}