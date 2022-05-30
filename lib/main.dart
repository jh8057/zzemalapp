import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'zzemalApp',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  //It's a good practice to expose the ability to provide a key when creating public widgets.
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Start'),
        backgroundColor: Colors.brown,
        elevation: 0.0, // appbar가 떠있는 정도
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0, 0),
        child: Column(children: const <Widget>[
          Text('hello'),
          Text('hello'),
        ]),
      ),
    );
  }
}
