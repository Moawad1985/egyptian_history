import 'package:egyptian_history/widgets/history_page.dart';
import 'package:egyptian_history/widgets/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

