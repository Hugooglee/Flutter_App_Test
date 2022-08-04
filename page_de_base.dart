import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voici une page simple qui affiche "bonjour" ',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Center(
        child: Text("bonjour"),
        )
      )
    ;
  }
}

