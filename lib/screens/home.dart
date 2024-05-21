import 'package:components/screens/routing.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.send),
            title: const Text("Holaaaaaa",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                    fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, Routing.routeName);
            },
          )
        ],
      ),
    );
  }
}
