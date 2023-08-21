import 'package:flutter/material.dart';
import 'custom widget/tiles.dart';

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
      theme: ThemeData(
        colorScheme: isDark
            ? const ColorScheme.dark()
            : const ColorScheme.light(background: Colors.white),
      ),
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
  void settingspage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const profilepage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
          const SizedBox(
            height: 60,
          ),
          //this is the container at the top , something Like a card
          const card(),
          //this is the tiles that should change colour with the switch change actually
          const ListT(),
          const ListT(),
          const ListT(),
        ],
      ),
    );
  }
}
