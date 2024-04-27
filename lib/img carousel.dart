import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Carousel'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 300,
          child: AnotherCarousel(
            boxFit: BoxFit.fill,
            images: const [
              AssetImage('assets/images/1.jpg'),
              AssetImage('assets/images/2.jpg'),
              AssetImage('assets/images/3.jpg'),
              AssetImage('assets/images/4.jpg'),
            ],
            autoplay: false,
          ),
        ),
      ),
    );
  }
}
