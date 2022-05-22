import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static const String initialRoute = "home";

  static final Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => const HomeScreen(),
    "list-two": (BuildContext context) => ListViewTwoScreen(),
    "list-one": (BuildContext context) => ListViewOneScreen(),
    "alert-screen": (BuildContext context) => const AlertScreen(),
    "card-screen": (BuildContext context) => const CardScreen()
  };

  //ongenerated route es como la ruta 404 en la web es lo que hace
  //el router cuando la ruta no existe
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
