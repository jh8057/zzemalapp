import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: Container(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      TextField(
                        controller: controller,
                        decoration:
                            const InputDecoration(labelText: 'Enter ID'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                          controller: controller2,
                          decoration:
                              const InputDecoration(labelText: 'Enter PW'),
                          keyboardType: TextInputType.text,
                          obscureText: true),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            onclickedBtn(controller, controller2);
                          },
                          child: const Icon(Icons.arrow_forward))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

void onclickedBtn(controller, controller2) {
  int ranNum = 1;
  ranNum = Random().nextInt(6) + 1;
  if (controller.text == 'zzemal' && controller2.text == '1234') {
    flutterToast('Hello ${controller.text}');
  } else {
    flutterToast('unkwoun#$ranNum - unauthorized');
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
