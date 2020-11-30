import 'package:flutter/material.dart';
import 'package:lol2/resources/local/strings.dart';

class IntroTextHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.choose_your,
          style: Theme.of(context).textTheme.button,
        ),
        Text(
          Strings.choose_your_champion,
          style: Theme.of(context).textTheme.headline2.copyWith(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
              fontFamily: 'Beaufort'),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              Strings.choose_your_champion_desc,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ))
      ],
    );
  }
}