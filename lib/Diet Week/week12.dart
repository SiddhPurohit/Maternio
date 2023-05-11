//--------------------------------preg_diet_screens--------------------------

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'diet_chart_preg.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: (week12())));

class week12 extends StatefulWidget {
  @override
  State<week12> createState() => _week12State();
}

class _week12State extends State<week12> {
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
              'Week 12',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //-----------------------------diet------------------------------------------------
          Expanded(
            flex: 7,
            child: ListView(
              children: [
                //--------------------------------------pre breakfast snack---------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3, // soften the shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/pre_break.jpg'),
                            radius: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PRE BREAKFAST SNACK",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Any fruit juice available (1 glass).                                       ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 15),
                        
                        SizedBox(width: 5),
                      ],
                    ),
                    height: 150,
                  ),
                ),
                //-----------------------------morning breakfast------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3, // soften the shadow
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/breakfast.jpg'),
                            radius: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MORNING BREAKFAST",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Moongdal chilla-3/+pudina/coconut chutney-2tsp/ Wheat dosa-4+ Tomato subji ½ cup.",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 15),
                       
                        SizedBox(width: 5),
                      ],
                    ),
                    height: 150,
                  ),
                ),
                //-------------------------mid morning snack------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3, // soften the shadow
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/mid_morning.jpg'),
                            radius: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MID MORNING SNACK",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Blue berry shake 1 cup.                                                                              ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 15),
                       
                        SizedBox(width: 5),
                      ],
                    ),
                    height: 130,
                  ),
                ),
                //----------------------------------lunch-----------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3, // soften the shadow
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/lunch.jpeg'),
                            radius: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "LUNCH",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "1.5 cup Mutton biryani. Cucumber onion Raita ½ cup.",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 15),
                       
                        SizedBox(width: 5),
                      ],
                    ),
                    height: 130,
                  ),
                ),
                //-------------------------------evening snack----------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3, // soften the shadow
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/evening.jpg'),
                            radius: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "EVENING SNACK",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Sweet potato salad (cooked sweet potato-200gm, chat masala- 1 pinch, lemon juice- 1 tsp)+ Light tea /coffee 1 cup.",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 15),
                       
                        SizedBox(width: 5),
                      ],
                    ),
                    height: 170,
                  ),
                ),
                //---------------------------dinner------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.shade100,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3, // soften the shadow
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/dinner.jpg'),
                            radius: 30),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DINNER",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Wheat dosa 3 + 1/2 cup Bitter guard subji.",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(width: 15),
                        
                        SizedBox(width: 5),
                      ],
                    ),
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //-----------------------------bottom navigation bar----------------------
    ));
  }
}
