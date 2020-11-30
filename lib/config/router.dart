import 'package:flutter/material.dart';

import '../presentations/pages/unknown/UnknownPage.dart';
import '../presentations/pages/home/home_page.dart';

/// https://www.filledstacks.com/snippet/clean-navigation-in-flutter-using-generated-routes/
class Routers {
  static const String homePage = 'homePage';
  static const String unknownPage = 'unknownPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => UnknownPage(),
        );
    }
  }
}
