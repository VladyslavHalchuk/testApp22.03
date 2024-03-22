import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BackgroundColorChangePage(),
    );
  }
}

class BackgroundColorChangePage extends StatefulWidget {
  const BackgroundColorChangePage({super.key});

  @override
  State<BackgroundColorChangePage> createState() => _BackgroundColorChangePageState();
}

class _BackgroundColorChangePageState extends State<BackgroundColorChangePage> {

  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }

  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Container(
        color: _backgroundColor,
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 20, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
