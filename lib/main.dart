import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:my_app/login_app/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zzemalApp',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const LogIn(),
    );
  }
}

///////////funtions////////////////////
class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('Show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Hello'),
              backgroundColor: Color.fromARGB(255, 31, 58, 11),
              action: SnackBarAction(
                  label: 'More',
                  onPressed: () {
                    flutterToast('Clicked More!');
                  }),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.teal, width: 5)),
            ),
          );
        },
      ),
    );
  }
}

class MyToastBtn extends StatelessWidget {
  const MyToastBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('Toast'),
        onPressed: () {
          flutterToast('Toast Msg');
        },
      ),
    );
  }
}

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('Go Second Page'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return const MyContainer();
          }));
        },
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(20),
              child: const Text('Hello Container'),
            ),
            TextButton(
              child: const Text('Go Back Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void flutterToast(msg) {
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
