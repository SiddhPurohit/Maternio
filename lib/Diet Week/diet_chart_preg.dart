//--------------------------------baby_screens--------------------------
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';


import 'package:flutter/material.dart';
import 'package:maternio_1/Diet%20Week/week1.dart';
import 'package:maternio_1/Diet%20Week/week10.dart';
import 'package:maternio_1/Diet%20Week/week11.dart';
import 'package:maternio_1/Diet%20Week/week12.dart';
import 'package:maternio_1/Diet%20Week/week13.dart';
import 'package:maternio_1/Diet%20Week/week14.dart';
import 'package:maternio_1/Diet%20Week/week15.dart';
import 'package:maternio_1/Diet%20Week/week16.dart';
import 'package:maternio_1/Diet%20Week/week17.dart';
import 'package:maternio_1/Diet%20Week/week18.dart';
import 'package:maternio_1/Diet%20Week/week19.dart';
import 'package:maternio_1/Diet%20Week/week2.dart';
import 'package:maternio_1/Diet%20Week/week20.dart';
import 'package:maternio_1/Diet%20Week/week21.dart';
import 'package:maternio_1/Diet%20Week/week23.dart';
import 'package:maternio_1/Diet%20Week/week24.dart';
import 'package:maternio_1/Diet%20Week/week25.dart';
import 'package:maternio_1/Diet%20Week/week26.dart';
import 'package:maternio_1/Diet%20Week/week27.dart';
import 'package:maternio_1/Diet%20Week/week3.dart';
import 'package:maternio_1/Diet%20Week/week4.dart';
import 'package:maternio_1/Diet%20Week/week7.dart';
import 'package:maternio_1/Diet%20Week/week8.dart';
import 'package:maternio_1/Diet%20Week/week9.dart';

import '../Main screens/navbar.dart';
import 'week22.dart';
import 'week28.dart';
import 'week29.dart';
import 'week30.dart';
import 'week31.dart';
import 'week32.dart';
import 'week33.dart';
import 'week34.dart';
import 'week35.dart';
import 'week36.dart';
import 'week5.dart';
import 'week6.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class diet_chart extends StatefulWidget {
  @override
  State<diet_chart> createState() => _diet_chartState();
}

class _diet_chartState extends State<diet_chart> {
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
              'Diet Chart',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20),
              ),
            )),
          ),
          //-------------------------------2nd container----------------------------------------
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              'Please select week',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //-----------------------------Days------------------------------------------------
          Expanded(
            flex: 7,
            child: ListView(
              children: [
                //------------------------------------ Week 1---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 1',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week1()));
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
                //---------------------------------------------Week 2--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 2',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week2()));
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
                //------------------------------------ Week 3---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 3',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week3()));
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
                //---------------------------------------------Week 4--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 4',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week4()));
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
                //------------------------------------ Week 5---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 5',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week5()));
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
                //---------------------------------------------Week 6--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 6',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week6()));
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
                //------------------------------------ Week 7---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 7',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week7()));
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
                //---------------------------------------------Week 8--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 8',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week8()));
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
                //------------------------------------ Week 9---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 9',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week9()));
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
                //---------------------------------------------Week 10--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 10',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week10()));
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
                //------------------------------------ Week 11---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 11',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week11()));
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
                //---------------------------------------------Week 12--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 12',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week12()));
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
                //------------------------------------ Week 13---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 13',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week13()));
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
                //---------------------------------------------Week 14--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 14',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week14()));
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
                //------------------------------------ Week 15---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 15',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week15()));
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
                //---------------------------------------------Week 16--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 16',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week16()));
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
                //------------------------------------ Week 17---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 17',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week17()));
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
                //---------------------------------------------Week 18--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 18',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week18()));
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
                //------------------------------------ Week 19---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 19',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week19()));
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
                //---------------------------------------------Week 20--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 20',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week20()));
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
                //------------------------------------ Week 21---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 21',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week21()));
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
                //---------------------------------------------Week 22--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 22',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week22()));
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
                //------------------------------------ Week 23---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 23',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week23()));
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
                //---------------------------------------------Week 24--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 24',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week24()));
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
                //------------------------------------ Week 25---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 25',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week25()));
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
                //---------------------------------------------Week 26--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 26',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week26()));
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
                //------------------------------------ Week 27---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 27',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week27()));
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
                //---------------------------------------------Week 28--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 28',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week28()));
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
                //------------------------------------ Week 29---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 29',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week29()));
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
                //---------------------------------------------Week 30--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 30',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week30()));
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
                //------------------------------------ Week 31---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 31',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week31()));
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
                //---------------------------------------------Week 32--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 32',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week32()));
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
                //------------------------------------ Week 33---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 33',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week33()));
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
                //---------------------------------------------Week 34--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 34',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week34()));
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
                //------------------------------------ Week 35---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 144, 0, 255),
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 35',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week35()));
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
                //---------------------------------------------Week 36--------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurpleAccent.shade100,
                    ),
                    height: 70,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Week 36',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
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
                                    builder: (context) => week36()));
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
              ],
            ),
          ),
        ],
      ),
      //-----------------------------bottom navigation bar----------------------
          bottomNavigationBar: BottomNavBar(0),
    ));
  }
}
