import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListT extends StatefulWidget {
  const ListT({super.key});

  @override
  State<ListT> createState() => _ListTState();
}

class _ListTState extends State<ListT> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.green),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30,
              width: 30,
              color: Colors.red,
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
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: const Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
