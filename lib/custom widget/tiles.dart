import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'text.dart';

//defining a global dark boolean provider
final darkmodeprovider = StateProvider<bool>((ref) => false);

//this is where the class goes for the preferences of course
const String key = 'darkmode';

//this is the shared pref class
class Themeprefs {
  //this should be where the value is like monitored and stored or something
  Future<void> storstate(bool value) async {
    SharedPreferences prefed = await SharedPreferences.getInstance();
    prefed.setBool(key, value);
  }
//this is where the thing should be triggered from

  Future<bool> loaded() async {
    SharedPreferences getting = await SharedPreferences.getInstance();
    return getting.getBool(key) ?? false;
  }
}

///the above function should watch the current boolean value and store it
///the next code below is the class of the ui,the function for the switch would be built below
class ListT extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarker = ref.watch(darkmodeprovider);
    return Container(
      height: 70,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isDarker ? Colors.white : Colors.black),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('ui/users.png'),
            ),
            const SizedBox(
              width: 10,
            ),
            const Tess(text: 'Friends')
          ],
        ),
      ),
    );
  }
}

///the card wiget
///can be imported for display on the main UI

class CarD extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarker = ref.watch(darkmodeprovider);
    const text = 'Welcome Blnk';
    return Container(
      height: 100,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDarker ? Colors.white : Colors.black),
      child: const Center(child: Tess(text: text)),
    );
  }
}

///ENSURE TO USE PROPER CODE , NEAT AND CLEAN
//let's see if i can use the switch here:
class modall extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarker = ref.watch(darkmodeprovider);

    void swish() {
      ref.read(darkmodeprovider.notifier).state = !isDarker;
    }

    return Container(
      height: 400,
      width: 300,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isDarker
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : Colors.grey),
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Tess(text: 'Mode settings'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Icon(Icons.light_mode_outlined,
                              color: isDarker ? Colors.white : Colors.black)),
                    ),
                    Text(
                      'Lightmode',
                      style: TextStyle(
                          color: isDarker ? Colors.white : Colors.black),
                    ),
                    Switch(
                      value: isDarker,
                      onChanged: (value) {
                        swish();
                      },
                      activeColor: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
