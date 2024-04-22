import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      debugShowMaterialGrid: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> data = [];
  Future loadList() async {
    await Future.delayed(Duration(milliseconds: 3000));
    final random = Random();
    final data = List.generate(10, (index) => random.nextInt(100));
    setState(() {
      this.data = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loadList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Refresh Indicator"),
        ),
        body: Container(
            child: RefreshIndicator(
          backgroundColor: Colors.teal,
          color: Colors.white,
          strokeWidth: 2,
          edgeOffset: 20,
          displacement: 200,
          onRefresh: () async {
            await loadList();
          },
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data[index].toString(),
                        style: TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                );
              }),
        )));
  }
}
