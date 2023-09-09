import 'package:flutter/material.dart';
import 'package:gdsc/Navigation%20bar/home.dart';
import 'package:gdsc/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const MyHomePage(),
      },
    );
  }
}
