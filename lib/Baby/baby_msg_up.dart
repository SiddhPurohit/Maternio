//--------------------------------baby_screens--------------------------

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Main screens/navbar.dart';

//import 'package:google_nav_bar/google_nav_bar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class msg_upper extends StatefulWidget {
  msg_upper({Key? key}) : super(key: key);

  @override
  State<msg_upper> createState() => msg_start();
}

class msg_start extends State<msg_upper> {
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
                  'Upper body massage for babies',
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
                                        'assets/baby_upper_1.gif'),
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
                  //*************************************************** */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Text(
                              "Start upper body massage with your hands on baby’s shoulders. Make gentle strokes in towards the chest.",
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
                                        'assets/baby_upper_2.gif'),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.deepPurpleAccent,
                                ),
                                height: 150,
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
                              "Massage baby’s arms by stroking from shoulders down towards wrists. Try not to get oil on baby’s hands. If you do, wipe baby’s fingers clean before baby sucks them.",
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
                                        'assets/baby_upper_3.gif'),
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
                        child: SingleChildScrollView(
                          child: Text(
                              "If baby’s tummy feels soft, massage it with circular, clockwise strokes. If baby gets unsettled, go on to the next step. Avoid the belly button area if baby’s cord hasn’t healed. Don’t put pressure on the area between baby’s nipples and tummy.",
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
