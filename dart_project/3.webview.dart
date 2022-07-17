import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zzemalApp',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const WebPackPage(),
    );
  }
}

class WebPackPage extends StatelessWidget {
  const WebPackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('My App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _webpackPage(),
    );
  }
}

Widget _webpackPage() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/app.gif'),
        const CircularProgressIndicator(
          color: Colors.black,
        )
      ],
    ),
  );
}
