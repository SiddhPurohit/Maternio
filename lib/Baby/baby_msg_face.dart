//--------------------------------baby_screens--------------------------

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Main screens/navbar.dart';

//import 'package:google_nav_bar/google_nav_bar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: (msg_face())));

class msg_face extends StatelessWidget {
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
                  'Face and back massage for babies',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20,)
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
                                        'assets/baby_face_1.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 175,
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
                            "Use your finger pads to massage baby’s face. Stroke from the middle of baby’s forehead, down the outside of their face and in towards their cheeks. Massage the scalp in small circles.",
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
                                        'assets/baby_face_2.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 175,
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
                        child: Text(
                            "If baby is still relaxed when you’ve finished massaging the front of their body, you can turn baby onto their tummy and use long, smooth strokes from head to toe.",
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
                                        'assets/baby_face_3.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 175,
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
                            "Use a soothing touch. Stop the massage if your baby seems uncomfortable. Avoid massage if you’re very tense, or if your baby is upset. Make sure your fingernails are short.",
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
