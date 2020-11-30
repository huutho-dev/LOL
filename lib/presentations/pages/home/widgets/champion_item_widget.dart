import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lol2/models/champion_entity.dart';

class ChampionItemWidget extends StatelessWidget {
  // http://ddragon.leagueoflegends.com/cdn/img/champion/splash/Aatrox_0.jpg
  // http://ddragon.leagueoflegends.com/cdn/img/champion/loading/Aatrox_0.jpg
  // http://ddragon.leagueoflegends.com/cdn/10.24.1/img/champion/Aatrox.png
  // http://ddragon.leagueoflegends.com/cdn/10.24.1/img/passive/Anivia_P.png

  final ChampionsEntity champion;

  ChampionItemWidget({@required this.champion, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3;

    return Container(
      child: Column(
        children: [
          CachedNetworkImage(
            fit: BoxFit.cover,
            width: width,
            height: width,
            imageUrl:
                'http://ddragon.leagueoflegends.com/cdn/10.24.1/img/champion/${champion.image.full}',
          ),
          Container(
            color: Color.fromARGB(255, 6, 26, 33),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  champion.name.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
