import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        height: 50,
        child: TextButton(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(Icons.login_outlined),
                Text('Login with Google'),
              ]),
          onPressed: () {
            print('Google Login');
          },
        ));
  }
}
