import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'login.dart';
import './ScreenA.dart';

class MainTwo extends StatelessWidget {
  const MainTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MainTwo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Go ScreenA'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ScreenA()));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Go Login'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.thumb_up),
          onPressed: () {
            doSnack(context);
          },
        ));
  }
}

void flutterToast() {
  Fluttertoast.showToast(msg: '❤️', webPosition: 'center');
}

void doSnack(context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('I LIKE IT!'), duration: Duration(seconds: 5)));
}
