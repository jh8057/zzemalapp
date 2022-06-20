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
      body: _buildButton(),
    );
  }

  // _ : private - 외부참조안됨
  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyButton(
              icon: const Icon(Icons.abc),
              text: const Text('hello'),
              radius: 4.0,
              onPressed: () {
                print('hello');
              },
            ),
            MyButton(
              icon: const Icon(Icons.ac_unit_sharp),
              text: const Text('hello2'),
              radius: 8.0,
              onPressed: () {
                print('hello2');
              },
            ),
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
    );
  }
}
