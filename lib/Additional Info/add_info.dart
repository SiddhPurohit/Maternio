//--------------------------------baby_screens--------------------------
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Additional%20Info/preg_info.dart';
import 'package:maternio_1/Main%20screens/navbar.dart';

import 'baby_info.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class add_info extends StatefulWidget {
  @override
  State<add_info> createState() => _add_infoState();
}

class _add_infoState extends State<add_info> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //-----------------------------AppBar-----------------------------------------------------
       appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      //=============main body column---------------------------------------------------------
      body: Column(
        children: [
          //-------------------------------diet chart text -------------------------------
          Container(
            child: Center(
                child: Text(
              'Additional Information',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 25),
              ),
            )),
          ),
          //-------------------------------2nd container----------------------------------------
          SizedBox(
            height: 15,
          ),
          Container(
            child: Center(
              child: Text(
                'Please select your profile',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          //-----------------------------Days------------------------------------------------
          Expanded(
            flex: 7,
            child: ListView(
              children: [
                //------------------------------------ Week 1---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Builder(
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurpleAccent.shade700,
                        ),
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Spacer(flex: 1,),
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/pregnantpp.png'),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                '  Preganant Woman',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Spacer(
                                flex: 8,
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => preg_info()));
                                },
                                icon: Icon(Icons.arrow_forward_ios_rounded),
                                color: Colors.white,
                                iconSize: 35,
                              ),
                              Spacer(
                                flex: 1,
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                ),
                //---------------------------------------------Week 2--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade700,
                    ),
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(flex: 1,),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage('assets/babypp.png'),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Baby/Mother',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(
                            flex: 7,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => baby_info()));
                            },
                            icon: Icon(Icons.arrow_forward_ios_rounded),
                            color: Colors.white,
                            iconSize: 35,
                          ),
                          Spacer(
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
             
              ],
            ),
          ),
        ],
      ),
      //-----------------------------bottom navigation bar----------------------
          bottomNavigationBar: BottomNavBar(2),
    )
    );
  }
}
