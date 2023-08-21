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
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    print('THE button has been pressed');
                  },
                  icon: const Icon(Icons.account_circle_outlined),
                ),
                const SizedBox(
                  height: 60,
                ),
                // This is the container at the top, something like a card
                const Card(),
                // These are the tiles that should change color with the switch change
                const ListT(),
                const ListT(),
                const ListT(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
