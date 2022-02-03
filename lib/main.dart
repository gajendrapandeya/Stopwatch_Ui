import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    /*
    * AnnotatedRegion<SystemUiOverlayStyle> creates some kind of SafeArea widget
    * where we can pass a value of either dark or light to show status bar icons
    * in different shades
    * */
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(32.0),
            child: AspectRatio(
              aspectRatio: 0.85,
              child: Center(
                child: Stopwatch(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
