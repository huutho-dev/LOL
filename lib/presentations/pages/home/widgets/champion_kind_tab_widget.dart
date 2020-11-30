import 'package:flutter/material.dart';
import 'package:lol2/constants.dart';

import '../home_page.dart';
import 'champion_kind_widget.dart';

class ChampionKindTabWidget extends StatefulWidget {
  final ChampionKindSelectedCallback callback;

  ChampionKindTabWidget({
    Key key,
    @required this.callback,
  }) : super(key: key);

  @override
  _ChampionKindTabWidgetState createState() =>
      _ChampionKindTabWidgetState(callback);
}

class _ChampionKindTabWidgetState extends State<ChampionKindTabWidget> {
  final ChampionKindSelectedCallback callback;

  _ChampionKindTabWidgetState(this.callback);

  int _indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _selectTab(0);
                },
                child: ChampionKindWidget(
                  iconPath: 'assets/images/ic_assassins.svg',
                  name: 'Assassins',
                  isSelected: _indexSelected == 0,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _selectTab(1);
                },
                child: ChampionKindWidget(
                  iconPath: 'assets/images/ic_fighters.svg',
                  name: 'Fighters',
                  isSelected: _indexSelected == 1,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _selectTab(2);
                },
                child: ChampionKindWidget(
                  iconPath: 'assets/images/ic_mages.svg',
                  name: 'Mages',
                  isSelected: _indexSelected == 2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _selectTab(3);
                },
                child: ChampionKindWidget(
                  iconPath: 'assets/images/ic_marksmen.svg',
                  name: 'Marksmen',
                  isSelected: _indexSelected == 3,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _selectTab(4);
                },
                child: ChampionKindWidget(
                  iconPath: 'assets/images/ic_supports.svg',
                  name: 'Supports',
                  isSelected: _indexSelected == 4,
                ),
              ),
              GestureDetector(
                onTap: () {
                  _selectTab(5);
                },
                child: ChampionKindWidget(
                  iconPath: 'assets/images/ic_tanks.svg',
                  name: 'Tanks',
                  isSelected: _indexSelected == 5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _selectTab(int index) {
    if (_indexSelected != index) {
      setState(() {
        _indexSelected = index;
      });

      switch (index) {
        case 0:
          callback.call(ChampionKind.Assassin);
          break;
        case 1:
          callback.call(ChampionKind.Fighter);
          break;
        case 2:
          callback.call(ChampionKind.Mage);
          break;
        case 3:
          callback.call(ChampionKind.Marksman);
          break;
        case 4:
          callback.call(ChampionKind.Support);
          break;
        case 5:
          callback.call(ChampionKind.Tank);
          break;
      }
    }
  }
}
