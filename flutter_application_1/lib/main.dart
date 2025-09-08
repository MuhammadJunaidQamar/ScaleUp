
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random randomNum = Random();
  int value = 0;
  int todayNum = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          width: 300,
          height: value == todayNum ? double.infinity : 300,
          child: value == todayNum
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Todays lucky number is: $todayNum'),
                    Icon(Icons.done, color: Colors.green),
                    Text('You won: $value'),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Todays lucky number is: $todayNum'),
                    Icon(Icons.error, color: Colors.red),
                    Text('Better luck next time\nYourNumber: $value'),
                  ],
                ),
        ),
      ),
      floatingActionButton: value != todayNum
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  value = randomNum.nextInt(5);
                });
              },
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}
