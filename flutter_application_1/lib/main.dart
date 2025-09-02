import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_textfeild.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("app"),
                  Image.asset('assets/owl.jpg'),
                  customTextField(
                    label: 'email',
                    hint: 'example@gmail.com',
                    inputType: TextInputType.emailAddress,
                  ),
                  customTextField(
                    label: 'password',
                    hint: '*****',
                    inputType: TextInputType.text,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("button"),

                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('My app'),
          backgroundColor: Colors.amber.shade300,
        ),
      ),
    );
  }
}
