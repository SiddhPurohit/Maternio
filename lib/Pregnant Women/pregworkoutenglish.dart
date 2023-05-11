// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, must_call_super

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Main screens/navbar.dart';

class PregExcercisePageEng extends StatefulWidget {
  const PregExcercisePageEng({Key? key}) : super(key: key);

  @override
  State<PregExcercisePageEng> createState() => _PregExcercisePageEngState();
}

class _PregExcercisePageEngState extends State<PregExcercisePageEng> {
  YoutubePlayerController video1 = YoutubePlayerController(
      initialVideoId: 'rB7P2KO1Cm4',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video2 = YoutubePlayerController(
      initialVideoId: 'LJk3HXn_f2M',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video3 = YoutubePlayerController(
      initialVideoId: 'xnTUuhtdWsI',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video4 = YoutubePlayerController(
      initialVideoId: 'npVDkVrLbrE',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video5 = YoutubePlayerController(
      initialVideoId: 'Ubu0Kn0zIkc',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video6 = YoutubePlayerController(
      initialVideoId: 'ry2cydyNnn4',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video7 = YoutubePlayerController(
      initialVideoId: 'LcG8eFuMnSU',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video8 = YoutubePlayerController(
      initialVideoId: 'zCwU4Hgas14',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video9 = YoutubePlayerController(
      initialVideoId: 'rm_Lo2Un5u4',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video10 = YoutubePlayerController(
      initialVideoId: 'zmUJWKM98hM',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video11 = YoutubePlayerController(
      initialVideoId: '7RB9QfY1SkM',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video12 = YoutubePlayerController(
      initialVideoId: 'lKx0sOz31C4',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video13 = YoutubePlayerController(
      initialVideoId: 'iYI8ztdST3A',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video14 = YoutubePlayerController(
      initialVideoId: 'cKXNGACDBBA',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video15 = YoutubePlayerController(
      initialVideoId: 'elNS5GR4PWQ',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video16 = YoutubePlayerController(
      initialVideoId: 'OT7te9Oncpk',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video17 = YoutubePlayerController(
      initialVideoId: 'oZSyOo4TtTY',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video18 = YoutubePlayerController(
      initialVideoId: 'IvO6t1FfYtg',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video19 = YoutubePlayerController(
      initialVideoId: 'XhqntqSGKsc',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video20 = YoutubePlayerController(
      initialVideoId: 'lM7lu2ZbjIU',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video21 = YoutubePlayerController(
      initialVideoId: 'YWt3qH-glTw',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video22 = YoutubePlayerController(
      initialVideoId: 'XmcQaYwdoK8',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video23 = YoutubePlayerController(
      initialVideoId: 'kTgvTMjPdYY',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video24 = YoutubePlayerController(
      initialVideoId: 'Mt0HndpCZ9Y',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video25 = YoutubePlayerController(
      initialVideoId: 'Q2va_tp0BA0',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video26 = YoutubePlayerController(
      initialVideoId: 'CaJOGFUO4Lg',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade700,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade700,
        elevation: 8,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Title Text -----------------------------------------------------
              SizedBox(height: 0),
              Text('Pre-Pregnancy Workout (English)',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white
                  )),
              SizedBox(height: 35),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Full Body Pregnancy Workout | Walking HIIT Workout | NOT EASY | 1st, 2nd, 3rd Trimester Safe',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              //Video Container ------------------------------------------------
              YTcontainer(video1),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Full Body Pregnancy Workout (With Partner Option) | 15-Minutes Pregnancy Exercises',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video2),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Pilates | 28-min Prenatal Pilates for Pregnancy (1st, 2nd and 3rd Trimester Safe)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video3),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Good Morning Pregnancy Yoga | First, Second & Third Trimester Prenatal Yoga',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                          color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video4),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Prenatal Cardio Workout | Day 7 - 30 Minute Pregnancy Cardio Workout (Pregnancy Workout Challenge)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video5),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Pilates For Back Pain & Sciatica (Pregnancy Back Pain Relief/Sciatica Relief)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video6),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Walking HIIT Workout (Pregnancy Exercises To Stay Fit & Active)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video7),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Short & Efficient Prenatal Pilates (15-Minute Pregnancy Pilates Class)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video8),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Advanced Pregnancy Workout | Total Body Tabata HIIT (Cardio + Pregnancy Exercises + Stretches)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video9),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Prenatal Cardio Workout | Day 7 - 30 Minute Pregnancy Cardio Workout (Pregnancy Workout Challenge)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video10),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      '15-Minute Pregnancy Yoga | First, Second & Third Trimester Prenatal Yoga',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video11),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      '15 Minute Dance Cardio Workout! | Low Impact & Easy To Follow | Pregnancy/Postpartum Safe Too!',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video12),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      '15 Minute Pregnancy Workout (Second Trimester + Third Trimester)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video13),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Feel Amazing After These Birth Ball Exercises For Birth Prep & To Relieve Pregnancy Symptoms',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video14),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Day 3 // Pregnancy Workout Challenge // Cardio',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video15),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Prenatal Yoga Workout (Pregnancy Yoga) - safe for all trimesters',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video16),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Lower Body Workout | Day 10 - Pregnancy Workout Challenge (1st, 2nd, 3rd Trimester)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video17),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Full Body Pregnancy Workout With Birth Ball Exercises | Cardio + Exercises + Stretches',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video18),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Exercises Second Trimester | 30 Minute Pregnancy Workout (Safe For All Trimesters)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video19),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      '35-Min Yoga Sculpt (Pregnancy and Postpartum Safe) Optional Light Weights',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video20),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Exercise For Normal Delivery & Easy Labor | Vaginal Birth | Natural Birth Preparation',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video21),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Yoga & Birth Preparation | Day 13 - 30 Minute Prenatal Yoga Class',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video22),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Prenatal Pilates Barre Sculpt | 35-min Pregnancy Workout (1st, 2nd, 3rd Trimester)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video23),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Full Body Pregnancy Workout | Pregnancy Cardio + Pregnancy Exercises',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video24),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Cardio + Pilates Combo Class! (First, Second & Third Trimester Safe)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video25),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      'Pregnancy Barre Pilates | 30-Minute Barre Pilates For Pregnancy (1st, 2nd, 3rd Trimester Exercise)',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video26),

              //----------------------------------------------------------------
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(0),
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
