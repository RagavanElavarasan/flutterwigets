import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late WebViewController _controller;
  void goback() async {
    await _controller.goBack();
    await _controller.canGoBack();
  }

  void goforward() async {
    await _controller.goForward();
    await _controller.canGoForward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter web viewer'),
        backgroundColor: const Color(0xFF04aa6d),
        actions: [
          IconButton(onPressed: () => goback, icon: const Icon(Icons.arrow_back)),
          IconButton(
              onPressed: () => goforward, icon: const Icon(Icons.arrow_forward)),
        ],
      ),
      body: SafeArea(
          child: WebView(
              initialUrl: 'https://www.w3schools.com/',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewcontroller) {
                _controller = webViewcontroller;
              })),
    );
  }
}
