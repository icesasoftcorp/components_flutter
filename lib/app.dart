import 'package:components/screens/home.dart';
import 'package:components/utils/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: routes,
      initialRoute: Home.routeName,
    );
  }
}
