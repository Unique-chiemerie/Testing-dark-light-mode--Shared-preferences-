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
          isDarker ? Colors.white : const Color.fromARGB(119, 0, 0, 0),
      body: ListView(
        children: [
          Column(
            children: [
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
                  icon: const Icon(Icons.switch_right_rounded),
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
