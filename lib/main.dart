import 'package:flutter/material.dart';
import 'package:second_app/screens/listviewtwo_screen.dart';

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
      home: ListViewTwoScreen(),
    );
  }
}
