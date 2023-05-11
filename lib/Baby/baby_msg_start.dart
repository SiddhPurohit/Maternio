//--------------------------------baby_screens--------------------------

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../Main screens/navbar.dart';

//import 'package:google_nav_bar/google_nav_bar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class baby_massage_start extends StatefulWidget {
  baby_massage_start({Key? key}) : super(key: key);

  @override
  State<baby_massage_start> createState() => _baby_massage_startState();
}

class _baby_massage_startState extends State<baby_massage_start> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
            Expanded(
                //flex: 1,
                child: Container(
              child: Center(
                child: Text(
                  'Getting started with baby massage',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,),
                ),
              ),
            )),

            //-----------------------------Days------------------------------------------------
            Expanded(
              flex: 9,
              child: ListView(
                children: [
                  //------------------------------------ DAy 1---------------------------------
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                      child: Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Color.fromRGBO(98, 2, 255, 0.5),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent.shade700,
                                      width: 4),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/baby_getting_started_1.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 180,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                              height: 100,
                            )),
                          ],
                        ),
                      )),
                  //*************************************************** */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Massage can be soothing for babies. Make sure the room is warm, your baby is quiet, well-rested and alert, and you’re relaxed. Try massage after a nap, when your baby is being changed or in the cot, or after a bath. You can do massage for 10-30 minutes.",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,)),
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

                        color: Colors.deepPurpleAccent.shade100,
                      ),
                      height: 150,
                    ),
                  ),
                  //---------------------------------------------------------------------
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                              height: 100,
                            )),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Color.fromRGBO(98, 2, 255, 0.5),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent.shade700,
                                      width: 4),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/baby_getting_started_2.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 180,
                              ),
                            ),
                          ],
                        ),
                      )),
                  //***************************** */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Text(
                              "Smooth a few drops of baby massage oil or sorbolene cream into your warm hands and massage the soles of baby’s feet. Use firm, gentle, slow strokes from heel to toe. Always keep one hand on baby. If you see signs of allergic reaction to the oil, wipe it off and see your GP.",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,)),
                        ),
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

                        color: Colors.deepPurpleAccent.shade100,
                      ),
                      height: 150,
                    ),
                  ),
                  //--------------------------------------------------------------------------------
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                      child: Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Color.fromRGBO(98, 2, 255, 0.5),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.deepPurpleAccent.shade700,
                                      width: 4),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/baby_getting_started_3.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 150,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                              height: 100,
                            )),
                          ],
                        ),
                      )),
                  //************************************* */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Do long smooth strokes up baby’s leg. Massage from ankle up to thigh and over hip. Massage both legs at once or one at a time. Avoid the genital area. Hold baby’s leg under the knee and gently press it towards the tummy to help release wind.",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,)),
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

                        color: Colors.deepPurpleAccent.shade100,
                      ),
                      height: 150,
                    ),
                  ),
                  //--------------------------------------------------------------------------------

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
}
