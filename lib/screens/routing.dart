import 'package:flutter/material.dart';

class Routing extends StatelessWidget {
  const Routing({super.key});
  static const String routeName = '/routing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Routing")),
    );
  }
}
