import 'package:flutter/material.dart';
import 'package:lol2/constants.dart';
import 'package:lol2/presentations/home/widgets/champion_kind_tab_widget.dart';

import 'widgets/intro_text_header_widget.dart';
import 'widgets/intro_video_widget.dart';

typedef void ChampionKindSelectedCallback(ChampionKind kind);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IntroVideoWidget(),
            SizedBox(height: 24),
            IntroTextHeaderWidget(),
            SizedBox(height: 16),
            Divider(
              indent: 12,
              endIndent: 12,
            ),
            ChampionKindTabWidget(
              callback: (ChampionKind kind) {},
            ),
          ],
        ),
      ),
    );
  }
}
