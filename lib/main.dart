import 'package:flutter/material.dart';

void main() {
  runApp(
    MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScallF(),
    );
  }
}

class ScallF extends StatefulWidget {
  const ScallF({super.key});

  @override
  State<ScallF> createState() => _ScallFState();
}

class _ScallFState extends State<ScallF> {
  @override
  Widget build(BuildContext context) {
    const text = 'Welcome Blnk';
    return Scaffold(
      body: ListView(
        children: [
          //this is the container at the top , something Like a card
          Container(
            height: 100,
            width: 300,
            margin: const EdgeInsets.all(10),
            child: const Center(
              child: Text(
                text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
