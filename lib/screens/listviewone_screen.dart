import 'package:flutter/material.dart';

class ListViewOneScreen extends StatelessWidget {
  final List<String> options = [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];
  ListViewOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewOneScreen"),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: ListView(
        children: [
          ...options.map((option) => ListTile(
            title: Text(option),
            leading: const Icon(Icons.ac_unit_outlined),
            trailing: const Icon(Icons.arrow_forward_ios)
          )).toList()
        ],
      ),
    );
  }
}
