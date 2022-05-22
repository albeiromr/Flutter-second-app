import 'package:flutter/material.dart';
import 'package:second_app/models/models.dart';

import '../screens/screens.dart';

class AppRouter {
  static const String initialRoute = "home";

  static final List<MenuOptionModel> appRoutes = [
    MenuOptionModel(
        route: "home",
        icon: Icons.home_sharp,
        name: "home",
        screen: const HomeScreen()),
    MenuOptionModel(
        route: "list-two",
        icon: Icons.list,
        name: "lista dos",
        screen: ListViewTwoScreen()),
    MenuOptionModel(
        route: "list-one",
        icon: Icons.list_alt,
        name: "lista uno",
        screen: ListViewOneScreen()),
    MenuOptionModel(
        route: "alert-screen",
        icon: Icons.sim_card_alert,
        name: "pantalla de alerta",
        screen: const AlertScreen()),
    MenuOptionModel(
        route: "card-screen",
        icon: Icons.crop_square_outlined,
        name: "pantalla de tarjetas",
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> buildRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    for (var route in appRoutes) {
      routes.addAll({route.route: (BuildContext context) => route.screen});
    }
    return routes;
  }

  //ongenerated route es como la ruta 404 en la web es lo que hace
  //el router cuando la ruta no existe
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
