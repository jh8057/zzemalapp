import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zzemalApp',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePageApp(),
    );
  }
}

@immutable
class MyHomePageApp extends StatelessWidget {
  const MyHomePageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ZZEMAL!'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text('hello'),
                Text('world'),
                Text('hellow'),
              ]),
        ));
  }
}
