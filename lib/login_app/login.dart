import 'package:flutter/material.dart';
import 'package:my_app/my_button/my_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Sign In', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const MyButton(),
              const MyButton(),
              ButtonTheme(
                  height: 50,
                  child: TextButton(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(Icons.login_outlined),
                          Text('Naver'),
                        ]),
                    onPressed: () {
                      print('Google Login');
                    },
                  ))
            ]),
      ),
    );
  }
}
