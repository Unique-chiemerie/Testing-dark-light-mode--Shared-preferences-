import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'custom widget/tiles.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    ),
  );
}

class MainScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarker = ref.watch(darkmodeprovider);
    return Scaffold(
      backgroundColor:
          isDarker ? const Color.fromARGB(107, 0, 0, 0) : Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'LIGHT MODE/ DARK MODE TEST',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: isDarker ? Colors.white : Colors.black),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => modall(),
                    );
                  },
                  icon: Icon(
                    Icons.switch_right_rounded,
                    color: isDarker ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          CarD(),
          // These are the tiles that should change color with the switch change
          ListT(),
          ListT(),
          ListT()
        ],
      ),
    );
  }
}
