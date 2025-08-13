import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> users = ["Danush", "Gaius", "Chakka", "darkchamp"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 114, 45, 157),
          child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final name = users[index];
                return Card(
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                );
              })),
    );
  }
}
