// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, must_call_super


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PregExcercisePageHindi extends StatefulWidget {
  const PregExcercisePageHindi({Key? key}) : super(key: key);

  @override
  State<PregExcercisePageHindi> createState() => _PregExcercisePageHindiState();
}

class _PregExcercisePageHindiState extends State<PregExcercisePageHindi> {
  YoutubePlayerController video1 = YoutubePlayerController(
      initialVideoId: 'K71FbvnaIus',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video2 = YoutubePlayerController(
      initialVideoId: 'w1Ujs_Db1aI',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video3 = YoutubePlayerController(
      initialVideoId: 'UkThwhWEmTs',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video4 = YoutubePlayerController(
      initialVideoId: '-9gr4q2jGGg',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video5 = YoutubePlayerController(
      initialVideoId: 'w9GbMxXQolc',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));

  YoutubePlayerController video6 = YoutubePlayerController(
      initialVideoId: 'ByD7bt5UyMo',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video7 = YoutubePlayerController(
      initialVideoId: 'rvazoHMivLU',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video8 = YoutubePlayerController(
      initialVideoId: 'nFdXrVM0Jl4',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video9 = YoutubePlayerController(
      initialVideoId: 'd_5sQwgPFT0',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video10 = YoutubePlayerController(
      initialVideoId: 'qz5OGOHIZg0',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video11 = YoutubePlayerController(
      initialVideoId: 'SBjKGYzDkEg',
      flags: YoutubePlayerFlags(autoPlay: false, mute: false, isLive: false));
  YoutubePlayerController video12 = YoutubePlayerController(
      initialVideoId: '_eCRSYIbtH4',
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
              //SizedBox(height: 0),
              Text(
                'Pre-Pregnancy Workout(हिंदी)',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white
                  )
              ),
              SizedBox(height: 35),

              //Video Container ------------------------------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Container(
                  child: Text(
                      "गर्भावस्था के दौरान किन्हे व्यायाम नहीं करना चाहिए ? | Exercising When Pregnant",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "गर्भावस्था के दौरान व्यायाम का महत्व | Benefits of Exercise During Pregnancy",
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
                      "गर्भावस्था में व्यायाम करते समय ये बाते ध्यान में रखे ! | Pregnancy Exercises Tips",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "गर्भावस्था में सरल योग व्यायाम | 1st month pregnancy exercise ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,color: Colors.white,
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
                     "गर्भावस्था के लिए श्वास व्यायाम | 2nd month pregnancy exercise",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "तीसरे महीने के लिए गर्भावस्था व्यायाम | Exercises for constipation & saggy breasts",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "चौथे महीने की गर्भावस्था व्यायाम | Workout During Pregnancy Second Trimester",
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
                      "5वें महीने की गर्भावस्था व्यायाम | गर्भावस्था दूसरी तिमाही के दौरान कसरत",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      " 6 महीने की गर्भावस्था व्यायाम| Workout During Pregnancy Second Trimester",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "7वें महीने की गर्भावस्था व्यायाम | Pregnancy Exercise for Normal Delivery ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "8वें महीने की गर्भावस्था व्यायाम | Pregnancy Exercise for Normal Delivery ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,color: Colors.white,
                        fontSize: 15,
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
                      "9वें महीने की गर्भावस्था व्यायाम | Tips for normal delivery in 9th Month ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white
                      )),
                  height: 70,
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
              YTcontainer(video12),
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
