import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  Timer? timer;
  PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print('Timer!');
      int curPage = controller.page!.toInt();
      int nextPage = curPage + 1;
      if (nextPage == 2) {
        print('cur : $curPage');
        print('next : $nextPage');
        curPage = 0;
        nextPage = 0;
      }

      controller.animateToPage(nextPage,
          duration: Duration(milliseconds: 400), curve: Curves.ease);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 상단 스타일 조정
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: PageView(
          controller: controller,
          children: [1, 2]
              .map((e) =>
                  Image.asset('assets/img/pic$e.jpeg', fit: BoxFit.cover))
              .toList()),
    );
  }
}
