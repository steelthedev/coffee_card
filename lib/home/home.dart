import 'package:coffee_card/coffee/coffee_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My coffee Id',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.brown[700],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: const EdgeInsets.all(20.0),
              child: const Text("How I like my cofee...."),
            ),
            Container(
              color: Colors.brown[100],
              padding: const EdgeInsets.all(20.0),
              child: const CoffeePrefs(),
            ),
            Expanded(
                child: Image.asset(
              "assets/img/cofee.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ))
          ],
        ));
  }
}
