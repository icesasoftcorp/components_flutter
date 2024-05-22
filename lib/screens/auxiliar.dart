import 'package:flutter/material.dart';

class Auxiliar extends StatelessWidget {
  const Auxiliar({super.key});

  static const String routeName = '/auxliar';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
        appBar: AppBar(title: const Text('Pantalla Auxiliar')),
        body: Center(
          child: ElevatedButton(
            child: Text("Ok's $arguments"),
            onPressed: () {
              final canPop = Navigator.canPop(context);
              print(canPop);
              Navigator.maybePop(context);
            },
          ),
        ));
  }
}
