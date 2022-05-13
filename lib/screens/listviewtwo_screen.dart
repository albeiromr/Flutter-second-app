import 'package:flutter/material.dart';

class ListViewTwoScreen extends StatelessWidget {
  final List<String> options = [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];
  ListViewTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewTwoScreen"),
        backgroundColor: Colors.indigo,
        elevation: 0.0,
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(options[index]),
              leading: const Icon(Icons.ac_unit_outlined),
              trailing: const Icon(Icons.arrow_forward_ios,
               color: Colors.indigoAccent,
              ),
              onTap: () {
                final String item = options[index];
                print(item);
              },
            );
          },
          separatorBuilder: (context, index) => const Divider()),
    );
  }
}
