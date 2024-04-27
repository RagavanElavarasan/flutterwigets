import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  final tabs = [
    const Center(child: Text('Home')),
    const Center(child: Text('Search')),
    const Center(child: Text('Profile')),
    const Center(child: Text('Camera')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Bottom Nav Bar'),
      ),
      body: tabs[i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: i,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
            backgroundColor: Colors.red,
          ),
        ],
        onTap: (currentIndex) {
          setState(() {
            i = currentIndex;
          });
        },
      ),
    );
  }
}
