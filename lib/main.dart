import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan TextField"),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              myTextField(),
              Text(cont.text),
            ],
          ),
        ),
      ),
    );
  }

  TextField myTextField() {
    return TextField(
      maxLength: 20,
      //obscureText: true,
      onChanged: (value) {
        setState(() {});
      },
      controller: cont,
    );
  }
}
