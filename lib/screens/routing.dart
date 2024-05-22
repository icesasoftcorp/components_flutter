import 'package:components/screens/auxiliar.dart';
import 'package:flutter/material.dart';

class Routing extends StatelessWidget {
  const Routing({super.key});
  static const String routeName = '/routing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routing')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Auxiliar.routeName,
                  arguments: "Hola Mundo",
                );
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.add), Text("Push Named")],
              ),
            ),

            ///push replacement named
            FilledButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Auxiliar.routeName);
              },
              icon: const Icon(Icons.ac_unit_rounded),
              label: const Text("Push Replacement"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Auxiliar.routeName,
                  (route) => false,
                );
              },
              child: const Text("Push named and remove until"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Pop"),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Auxiliar(),
                    settings: const RouteSettings(
                      arguments: "hey tu",
                    ),
                  ),
                );
              },
              child: const Text("Push"),
            ),
          ],
        ),
      ),
    );
  }
}
