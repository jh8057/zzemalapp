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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Column(children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/rainbow.png'),
                    ),
                    Text(
                      'name',
                      style: TextStyle(
                          color: Colors.brown,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'ZZemal',
                    style: TextStyle(color: Colors.black87, fontSize: 50),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
                width: 200,
              ),
              Row(
                children: const <Widget>[
                  Text('Why so serious?'),
                  Icon(Icons.search),
                ],
              ),
            ]),
      ),
    );
  }
}
