import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChampionKindWidget extends StatelessWidget {
  final String iconPath;
  final String name;
  final bool isSelected;

  ChampionKindWidget({
    Key key,
    @required this.iconPath,
    @required this.name,
    @required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          getIcon(context),
          SizedBox(height: 8),
          getText(context),
          SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget getIcon(context) {
    return Container(
        width: MediaQuery.of(context).size.width / 6,
        child: isSelected
            ? Container(
                width: 60,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 52,
                        height: 52,
                        child: Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                              'assets/images/ic_champion_type.svg'),
                        ),
                      ),
                      Container(
                        width: 22,
                        height: 22,
                        child: Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            iconPath,
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Container(
                width: 20,
                height: 20,
                child: Center(
                    child: SvgPicture.asset(
                  iconPath,
                  color: Colors.black54,
                ))));
  }

  Widget getText(context) {
    if (isSelected) {
      return Text(name,
          style: Theme.of(context)
              .textTheme
              .button
              .copyWith(color: Color.fromARGB(255, 182, 134, 55)).copyWith(fontSize: 11));
    }
    return Text(name,
        style: Theme.of(context).textTheme.button.copyWith(fontSize: 11));
  }
}
