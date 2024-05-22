import 'package:components/screens/auxiliar.dart';
import 'package:components/screens/home.dart';
import 'package:components/screens/list_view.dart';
import 'package:components/screens/routing.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  Home.routeName: (context) => const Home(),
  Routing.routeName: (context) => const Routing(),
  Auxiliar.routeName: (context) => const Auxiliar(),
  ListViewScreen.routeName: (context) => const ListViewScreen(),
};
