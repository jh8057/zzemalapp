import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ScreenA'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: ElevatedButton(
              child: const Text('Go Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
            Text('$counter'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            //flutter는 항상 rebuild해야 화면에 나오므로 이를 위한 setState()
            setState(() {
              counter++;
            });
          },
        ));
  }
}
