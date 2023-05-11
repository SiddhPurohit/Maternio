//--------------------------------baby_screens--------------------------
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Main screens/navbar.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: (ambulance())));

class ambulance extends StatefulWidget {
  @override
  State<ambulance> createState() => _ambulanceState();
}

class _ambulanceState extends State<ambulance> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          //-----------------------------AppBar-----------------------------------------------------
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text('Ambulance',style:  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.black),),
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

              elevation: 0,
              backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            //=============main body column---------------------------------------------------------
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/ambulance.jpg',
                        width: 300,
                        height: 250,
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your Health is Important \n For Now and the Future',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 23),),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: ()
                      {

                        FlutterPhoneDirectCaller.callNumber('102');
                      },
                      //{
                       // launch('tel:102');
                     // },
                      //color: Colors.orange,
                      // textColor: Colors.white,

                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            size: 24,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          const Text('Call Ambulance',style:TextStyle(fontSize: 18),),

                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          padding: EdgeInsets.symmetric(horizontal:30, vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                      ),
                    )
                  ],
                )
              ],
              //-----------------------------bottom navigation bar----------------------

            ),
          bottomNavigationBar: BottomNavBar(1),

        )
    );
  }
}
