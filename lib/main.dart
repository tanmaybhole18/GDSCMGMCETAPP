import 'package:flutter/material.dart';
import 'package:gdsc/pages/home.dart';
import 'package:gdsc/pages/home_page.dart';
import 'package:gdsc/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
