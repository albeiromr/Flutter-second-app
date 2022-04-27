import 'package:flutter/material.dart';

class ListViewOneScreen extends StatelessWidget {

  final List<String> options = [
    "Megaman", "Metal Gear", "Super Smash", "Final Fantasy"
  ];

  ListViewOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListViewOneScreen"),
        ),
        body: ListView(
          children:  [
            ...options.map((option) => ListTile(
              title: Text(option),
              trailing: const Icon(Icons.arrow_forward_ios, size: 30.00,)
            )).toList()
          ],
        ));
  }
}
