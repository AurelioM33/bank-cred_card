import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(List<String> args) {}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(useMaterial3: true),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
