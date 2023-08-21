import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//this is where the class goes for the preferences of course

const String key = 'darkmode';
bool isDark = false;

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
class ListT extends StatefulWidget {
  const ListT({super.key});

  @override
  State<ListT> createState() => _ListTState();
}

class _ListTState extends State<ListT> {
  @override
  void initState() {
    super.initState();
    _onscreen();
  }

//this should be the function resonsible to dispkay current bool?? idk man
  void _onscreen() async {
    isDark = await Themeprefs().loaded();
    setState(() {});
  }

//this the one that triggers it yeh?
  void _swish() async {
    isDark = !isDark;
    await Themeprefs().storstate(isDark);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isDark ? Colors.white : Colors.black),
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
                color: Colors.red,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Shit'),
          ],
        ),
      ),
    );
  }
}

//let's see if i can use the switch here:
class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    String profile = 'Profile';
    return ListView(
      children: [
        //the profile , backbutton and the rest
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            ),
            Text(profile),
            const SizedBox(
              height: 30,
              width: 30,
              child: Icon(Icons.more_vert_sharp),
            ),
          ],
        ),
        //the card widget to contain the option to switch modes
      ],
    );
  }
}

///the card wiget
///can be imported for display on the main UI

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    const text = 'Welcome Blnk';
    return Container(
      height: 100,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDark ? Colors.white : Colors.black),
      child: const Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
