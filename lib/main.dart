import 'package:flutter_analog_clock/clock_screen/clock_screeen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ClockScreen(),
    );
  }
}

class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 300,
          width: 300,
          child: myClock(),
        )
      ],
    );
  }
}


