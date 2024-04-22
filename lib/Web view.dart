import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late WebViewController _controller;

  goBack() async {
    await _controller.goBack();
    await _controller.canGoBack();
  }

  goForward() async {
    await _controller.goForward();
    await _controller.canGoForward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF04aa6d),
        title: Text('Web View'),
        actions: [
          IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back)),
          IconButton(onPressed: goForward, icon: Icon(Icons.arrow_forward)),
        ],
      ),
      body: SafeArea(
          child: WebView(
        initialUrl: 'https://www.w3schools.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
      )),
    );
  }
}
