import 'package:flutter/material.dart';
import 'custom widget/tiles.dart';

void main() {
  runApp(
    MainApp(),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: isDark
            ? const ColorScheme.dark()
            : const ColorScheme.light(background: Colors.white),
      ),
      home: const ScallF(),
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
          Column(
            children: [
              IconButton(
                onPressed: () {
                  print('THE button has been pressed');
                  settingspage();
                },
                icon: const Icon(Icons.account_circle_outlined),
              ),
            ],
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
