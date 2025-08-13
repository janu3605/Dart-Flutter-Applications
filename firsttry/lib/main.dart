import 'package:firsttry/first.dart';
import 'package:firsttry/listview.dart';
import 'package:firsttry/second.dart';
import 'package:firsttry/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      routes: {
        "/signup": (context) => const Signup(),
        "/first": (context) => const First(),
        "/second": (context) => const Second(),
        "/listview": (context) => const Listview(),
      },
      initialRoute: "/first",
    );
  }
}
