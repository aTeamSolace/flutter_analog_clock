import 'clock_text.dart';
import 'package:flutter/material.dart';
import 'clock_dial_painter.dart';
import 'clock_hands.dart';

class ClockFace extends StatelessWidget{

  final DateTime dateTime;
  final ClockText clockText;
  ClockFace({this.clockText = ClockText.arabic, this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new AspectRatio(
          aspectRatio: 0.85,
          child: new Container(
            child: new AspectRatio(
              aspectRatio: 0.75,
              child: new Container(
                width: double.infinity,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
              boxShadow: [
                BoxShadow(
                  offset: Offset(8.0, 0),
                  blurRadius: 7,
                  spreadRadius: 1,
                  color: Color(0xffd3e0f0)
                )
              ]
                ),
              ),
            ),
            width: double.infinity,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,

//              boxShadow: [
//                BoxShadow(
//                  offset: Offset(8.0, 0),
//                  blurRadius: 13,
//                  spreadRadius: 1,
//                  color: Color(0xffd3e0f0)
//                )
//              ]
            ),
          ),
        ),
      ),
    );
  }
}


