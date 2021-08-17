import 'package:flutter/material.dart';
import 'package:devquiz/home/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: HomePage()
    );
  }
}

