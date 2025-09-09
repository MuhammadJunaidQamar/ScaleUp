import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: TextField(controller: text)),
          MaterialButton(
            child: Text('button'),
            onPressed: () {
              print(text.text.toString());
            },
          ),
        ],
      ),
    );
  }
}
