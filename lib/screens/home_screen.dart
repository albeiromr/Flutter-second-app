import 'package:flutter/material.dart';
import 'package:second_app/router/app_router.dart';

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
                  title: Text(AppRouter.appRoutes[index].name),
                  leading: Icon(AppRouter.appRoutes[index].icon,
                      color: Colors.indigoAccent),
                  onTap: () => Navigator.pushNamed(
                      context, AppRouter.appRoutes[index].route)
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRouter.appRoutes.length),
      ),
    );
  }
}
