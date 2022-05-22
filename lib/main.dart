import 'package:flutter/material.dart';
import 'package:second_app/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.routes,
      //ongenerated route es como la ruta 404 en la web es lo que hace
      //el router cuando la ruta no existe
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
