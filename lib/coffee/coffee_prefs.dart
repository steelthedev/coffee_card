import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 2;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            Text("$strength"),
            Image.asset(
              'assets/img/1.png',
              width: 50,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              onPressed: increaseStrength,
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              child: const Text("+"),
            )
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            Text("$sugar"),
            Image.asset('assets/img/1.png',
                width: 50,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply),
            const Expanded(child: SizedBox()),
            FilledButton(
              onPressed: increaseSugars,
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              child: const Text("+"),
            )
          ],
        )
      ],
    );
  }
}
