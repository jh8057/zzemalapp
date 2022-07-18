import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // WebView.platform = AndroidWebView();
    //webview for web platform
    WebView.platform = WebWebViewPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://flutter.dev',
    );
  }
}
