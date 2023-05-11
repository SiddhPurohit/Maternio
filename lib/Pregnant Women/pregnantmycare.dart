import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:maternio_1/Diet%20Week/diet_chart_preg.dart';
import 'package:maternio_1/Pregnant%20Women/pregworkout.dart';

import '../Additional Info/add_info.dart';
import '../Baby/baby_massage.dart';
import '../Main screens/navbar.dart';


class pregnantmycare extends StatefulWidget {
  @override
  State<pregnantmycare> createState() => _pregnantmycareState();
}

class _pregnantmycareState extends State<pregnantmycare> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(

            child: Center(
              child: Column(
                children: [
                  Column(
                    children: [
                      Text("My Care",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 25))
                    ],
                  ),
                  SizedBox(height: 65,),
                  InkWell(onTap: (){  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PregWrokout()));},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(

                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(97, 0, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/pregwork.png'),
                            ),

                            SizedBox(width: 16),
                            Text(
                              'Pregnancy Workout',
                              style:  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 21,color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  InkWell(onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => massage_pg()));},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(

                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(97, 0, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/babyex.png'),
                            ),

                            SizedBox(width: 16),
                            Text(
                              'Massage For Baby',
                              style:  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 21,color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  InkWell(onTap: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => add_info()));},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(

                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(97, 0, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('assets/todaytip.png'),
                            ),

                            SizedBox(width: 16),
                            Text(
                              'Additional Information',
                              style:  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 21,color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => diet_chart()));},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Container(

                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(97, 0, 255, 1),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/diet.png'),
                            ),

                            SizedBox(width: 16),
                            Text(
                              'Diet',
                              style:  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 21,color: Colors.white)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    color: Colors.white,
                  ),
                ],//children
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(0),
      ),
    );
  }
}
