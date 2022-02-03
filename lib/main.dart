import 'package:flutter/material.dart';
import 'package:stopwatch_ui/ui/stopwatch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: StopWatch(),
      ),
    );
  }
}
