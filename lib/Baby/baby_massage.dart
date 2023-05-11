//--------------------------------baby_screens--------------------------

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Baby/baby_msg_face.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Main screens/navbar.dart';
import 'baby_msg_start.dart';
import 'baby_msg_up.dart';

class massage_pg extends StatefulWidget {
  massage_pg({Key? key}) : super(key: key);

  @override
  State<massage_pg> createState() => _massage_pgState();
}

class _massage_pgState extends State<massage_pg> {
  YoutubePlayerController video1 = YoutubePlayerController(
      initialVideoId: 'Fcn6gVX5y4I',
      flags: YoutubePlayerFlags(
          autoPlay: false, mute: false, isLive: false, forceHD: true));

  YoutubePlayerController video2 = YoutubePlayerController(
      initialVideoId: 'j2C8MkY7Co8',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ));

  YoutubePlayerController video3 = YoutubePlayerController(
      initialVideoId: 'huaZiFRBwsk',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ));

  YoutubePlayerController video4 = YoutubePlayerController(
      initialVideoId: 'iKa4gyNt9Js',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ));

  YoutubePlayerController video5 = YoutubePlayerController(
      initialVideoId: 'yBQQPpIj9Gw',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ));
  YoutubePlayerController video6 = YoutubePlayerController(
      initialVideoId: 'fdIayt91Vrs',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ));
  YoutubePlayerController video7 = YoutubePlayerController(
      initialVideoId: 'XhDHTw7QYF8',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
              child: Text('Massage for Baby',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.black)),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Column(
          children: [
            //-------------------------------2nd container----------------------------------------
            //-----------------------------Days------------------------------------------------
            Expanded(
              flex: 9,
              child: ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  //------------------------------------ DAy 1---------------------------------
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      child: Text('Getting started with baby massage',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                            child: Container(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                baby_massage_start()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Colors.deepPurpleAccent.shade700,
                                  )),
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.deepPurpleAccent.shade700,
                                    width: 1),
                              ),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        //color: Color.fromRGBO(98, 2, 255, 0.5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.deepPurpleAccent.shade700, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(193, 188, 188, 1),

                            blurRadius: 5,

                            spreadRadius: 3, //New
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/baby_img1.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.deepPurpleAccent,
                      ),
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //---------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      child: Text('Upper body massage for babies',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                            child: Container(
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => msg_upper()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Colors.deepPurpleAccent.shade700,
                                  )),
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.deepPurpleAccent.shade700,
                                    width: 1),
                              ),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        //color: Color.fromRGBO(98, 2, 255, 0.5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.deepPurpleAccent.shade700, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(193, 188, 188, 1),

                            blurRadius: 5,

                            spreadRadius: 3, //New
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/Baby_massage_img2.png'),
                            fit: BoxFit.fill),
                        color: Colors.deepPurpleAccent,
                      ),
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //--------------------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      child: Text('Face and back massage for babies',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                            child: Container(
                              child: IconButton(
                                  onPressed: () { Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => msg_face()));},
                                  icon: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: Colors.deepPurpleAccent.shade700,
                                  )),
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent.shade100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.deepPurpleAccent.shade700,
                                    width: 1),
                              ),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        //color: Color.fromRGBO(98, 2, 255, 0.5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: Colors.deepPurpleAccent.shade700, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(193, 188, 188, 1),

                            blurRadius: 5,

                            spreadRadius: 3, //New
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/Baby_massage_img3.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.deepPurpleAccent,
                      ),
                      height: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      child: Text('Baby Massage For Constipation',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      height: 35,
                      color: Colors.white,
                    ),
                  ),
                  YTcontainer(video1),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      child: Text('How To Calm A Crying Baby',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      height: 35,
                      color: Colors.white,
                    ),
                  ),
                  YTcontainer(video2),
                  //----------------------------------------------------------,
                  //---------------------------------------------DAY 2--------------------------------------------
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(0),
      ),
    );
  }

  Widget YTcontainer(ControllerName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
      child: Container(
        decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(0),
            border: Border.all(
              width: 3,
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
