// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, must_call_super


import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExcercisePage extends StatefulWidget {
  const ExcercisePage({Key? key}) : super(key: key);

  @override
  State<ExcercisePage> createState() => _ExcercisePageState();
}

class _ExcercisePageState extends State<ExcercisePage> {
  YoutubePlayerController video1 = YoutubePlayerController(
      initialVideoId: 'F7QfKws0X4s',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video2 = YoutubePlayerController(
      initialVideoId: 'Q2-W6OdzN6E',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video3 = YoutubePlayerController(
      initialVideoId: 'sAdF0beC0mg',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video4 = YoutubePlayerController(
      initialVideoId: 'OcxCDHg7buw',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video5 = YoutubePlayerController(
      initialVideoId: 'TMQzdsc7vtE',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Title Text -----------------------------------------------------
              SizedBox(height: 50),
              Text(
                'Pre-Pregnancy Workout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 35),

              //Video Container ------------------------------------------------
              YTcontainer(video1),
              YTcontainer(video2),
              YTcontainer(video3),
              YTcontainer(video4),

              //----------------------------------------------------------------
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  //Youtube Player Box Widget --------------------------------------------------
  Widget YTcontainer(ControllerName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xff6100FF),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4))
            ]),
        child: YoutubePlayer(
          controller: ControllerName,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Color(0xff6100FF),
          progressColors: ProgressBarColors(
              playedColor: Color(0xff6100FF), handleColor: Color(0xff6100FF)),
        ),
      ),
    );
  }
}
