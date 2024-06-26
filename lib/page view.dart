import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController page = PageController(initialPage: 0);
  int pageindex = 0;
  int maxPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (pageindex > 0) {
                setState(() {
                  pageindex--;
                });
                page.animateToPage(pageindex,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              if (pageindex < maxPageIndex) {
                setState(() {
                  pageindex++;
                });
                page.animateToPage(pageindex,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
              }
            },
          )
        ],
      ),
      body: PageView(
        controller: page,
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        onPageChanged: (index) {
          setState(() {
            pageindex = index;
          });
        },
        children: [
          Container(
            color: Colors.deepOrange,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            child: const Center(
              child: Text(
                'Page 4',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
