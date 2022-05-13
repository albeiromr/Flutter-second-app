import 'package:flutter/material.dart';
import 'package:second_app/screens/screens.dart';

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
      //home: ListViewTwoScreen(),
      initialRoute: "list-two",
      routes: <String, WidgetBuilder>{
        "list-two": (BuildContext context) => ListViewTwoScreen(),
        "list-one": (BuildContext context) => ListViewOneScreen(),
        "alert-string": (BuildContext context) => const AlertScreen(),
        "card-string": (BuildContext context) => const CardScreen()
      },
    );
  }
}
