import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  String _currentFortune = "";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _currentFortune = "";

  final _fortuneList = [
    "A surprise gift is on its way to you.",
    "You will achieve your greatest goal.",
    "Love is just around the corner.",
    "You will embark on a journey soon.",
    "A new opportunity will present itself.",
    "You will discover a hidden talent.",
    "Good health is your greatest wealth.",
    "A financial windfall is in your future.",
    "Your kindness will be rewarded.",
    "You will overcome a great challenge.",
    "A new friendship will bring joy to your life.",
    "Success is in your near future.",
    "An exciting adventure awaits you.",
    "You will receive good news soon.",
    "Your hard work will soon pay off.",
    "A pleasant surprise is in store for you.",
    "You will find clarity in a difficult situation.",
    "Happiness will come to you in unexpected ways.",
    "You will make a positive impact on someone’s life.",
    "New experiences will enrich your life.",
    "Your creativity will be recognized.",
    "You will find peace and contentment.",
    "A significant change is coming your way.",
    "You will meet someone who will change your life.",
    "Good fortune will follow you wherever you go."
  ];
  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[fortune];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/fortune_cookie.png',
                width: 200, height: 200, fit: BoxFit.cover),
            // const Text(
            //   "Your fortune is:",
            //   style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            // ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: _randomFortune, child: Text('Get Fortune'))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
