import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_analog_clock/clock/clock.dart';
import 'package:flutter/material.dart';
//
//class ClockScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//         SizedBox(
//           height: 300,
//           width: 300,
//           child: Clock(),
//         )
//
//
//      ],
//    );
//  }
//}


class myClock extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _myClock();
}

class _myClock extends State<myClock>{

  AudioPlayer advancedPlayer;

  @override
  initState() {
    super.initState();
//    loadMusic();
//    player.play(alarmAudioPath);
    player.loop(alarmAudioPath);
  }

  static AudioCache player = new AudioCache();
  static const alarmAudioPath = "clock_sound.mp3";


  Future loadMusic() async {
    advancedPlayer = await AudioCache().loop("assets/clock.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 300,
          width: 300,
          child: Clock(),
        )


      ],
    );
  }
}