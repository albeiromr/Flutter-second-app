import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en flutter"),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: const Text("Ruta"),
                  leading: const Icon(Icons.route_outlined,
                      color: Colors.indigoAccent),
                  onTap: () => Navigator.pushNamed(context, "list-two")
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10),
      ),
    );
  }
}
