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
  void showBottom() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Security Alert.....! '),
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );
        });
  }

  /*String s = '';
  void _onChange(String v) {
    setState(() {
      s = ' on change: ' + v;
    });
  }

  void _onSubmit(String v) {
    setState(() {
      s = 'on submit: ' + v;
    });
  }*/

  bool? mon = false;
  bool? tue = false;
  bool? wed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('My App Bar'),

        /*actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.people)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send_and_archive),
        onPressed: () {},
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ragavan E'),
              accountEmail: Text('ragavanofficial@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'RE',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('RM'),
                )
              ],
            ),
            ListTile(
              title: Text('All inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Primary'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Promotions'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Outbox'),
              leading: Icon(Icons.outbox),
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),



      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ],*/
      ),

      /*bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Meet', icon: Icon(Icons.search))
      ]
      ),*/

      /*body: Center(
        child: ElevatedButton(
          onPressed: showBottom,
          child: Text(
            'Click Me',
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
      ),

      /*body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 150,
              color: Colors.green,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.red,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              width: 150,
              color: Colors.orange,
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
      */

      /*body: Column(
        children: <Widget>[
          Text(s),
          TextField(
            decoration: InputDecoration(
                labelText: 'Enter Name',
                hintText: 'Your Name',
                icon: Icon(Icons.people)),
            onChanged: _onChange,
            onSubmitted: _onSubmit,
          )
        ],
      ),*/

      /*body: DataTable(
        columns: [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('NAME')),
          DataColumn(label: Text('AGE')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('1001')),
            DataCell(Text('RAGAVAN')),
            DataCell(Text('20'))
          ]),
          DataRow(cells: [
            DataCell(Text('1002')),
            DataCell(Text('DAVID')),
            DataCell(Text('27'))
          ]),
          DataRow(cells: [
            DataCell(Text('1003')),
            DataCell(Text('ROBERT')),
            DataCell(Text('24'))
          ]),
          DataRow(cells: [
            DataCell(Text('1004')),
            DataCell(Text('DEMIN')),
            DataCell(Text('28'))
          ]),
          DataRow(cells: [
            DataCell(Text('1005')),
            DataCell(Text('HEMAN')),
            DataCell(Text('30'))
          ]),
        ],
      ),*/

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customCheckBox('Mon', mon),
            customCheckBox('Tue', tue),
            customCheckBox('Wed', wed),
          ],
        ),
      ),*/
    );
  }

  Column customCheckBox(String s, bool? val) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(s),
          Checkbox(
              value: val,
              onChanged: (bool? value) {
                setState(() {
                  switch (s) {
                    case 'Mon':
                      {
                        mon = value;
                        print(mon);
                      }
                    case 'Tue':
                      {
                        tue = value;
                        print(tue);
                      }
                    case 'Wed':
                      {
                        wed = value;
                        print(wed);
                      }
                  }
                });
              })
        ]);
  }
}
