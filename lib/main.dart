import 'package:flutter/material.dart';
import 'package:dracula_burger/views/principal_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Principal(),
    );
  }
}
