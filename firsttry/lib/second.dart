import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 190, 96),
        title: Text("Second"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 35, 170, 148),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  print("button Clicked");
                  Navigator.pop(context);
                },
                child: Text("Move back")),
            TextButton(
              onPressed: () {
                print("button Clicked");
                Navigator.pushNamed(context, "/listview");
              },
              child: const Text("Push", style: TextStyle(fontSize: 32)),
            )
          ],
        ),
      ),
    );
  }
}
