import 'package:flutter/material.dart';
import 'package:radio_button/radio_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RadioButton",
      home: EntradaRadioButton(),
    );
  }
}

  