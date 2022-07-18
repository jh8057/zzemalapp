import 'package:flutter/material.dart';
import 'package:my_app/dart_project/4.imageCarousel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'zzemalApp',
      home: ImagePage(),
    );
  }
}
