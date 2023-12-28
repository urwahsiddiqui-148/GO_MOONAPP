import 'package:flutter/material.dart';
import 'package:gomoonapp1/allpages/home_pages.dart';

void main() {
  runApp(const App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(244, 0, 0, 0)),
        title: " LET'S GO TO MOON",
        home: homepage());
  }
}
