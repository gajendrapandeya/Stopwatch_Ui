import 'package:flutter/material.dart';

import 'elapsed_time_text_basic.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  @override
  Widget build(BuildContext context) {
    return const ElapsedTimeTextBasic(elapsed: const Duration(seconds: 5));
  }
}
