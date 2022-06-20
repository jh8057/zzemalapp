import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({Key? key}) : super(key: key);

  final Widget icon;
  final Widget text;
  final double radius;
  final VoidCallback onPressed;

  const MyButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.radius,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50,
      child: TextButton(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              icon,
              text,
            ]),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}
