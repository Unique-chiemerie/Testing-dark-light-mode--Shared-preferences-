import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_modes/custom%20widget/text.dart';
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
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const Tess(text: 'LIGHT MODE/DARK MODE TEST'),
              SizedBox(
                height: 50,
                width: 50,
                child: IconButton(
                  onPressed: () {
                    print('this has been pressed');
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => modall(),
                    );
                  },
                  icon: Icon(Icons.switch_right_rounded),
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
