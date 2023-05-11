import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Main screens/navbar.dart';

class baby_info extends StatefulWidget {

  @override
  State<baby_info>createState() => _baby_infoState();
}

class _baby_infoState extends State<baby_info>{
  String content="";
  Future fetchData() async {

    await FirebaseFirestore.instance
        .collection('babytips')
        .doc("1")
        .get()
        .then((value) async {
      content = value["Text"];


    });}
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      fetchData();
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Data',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              children: [
                Container(
                  child: Column(children: [
                    Text(
                      "Baby’s Growth & Develpoment",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage('assets/babypp.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 350,
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 30),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          border: Border.all(width: 7, color: Colors.white),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurpleAccent.shade100),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Infants (0-1 year of age)",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 18),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  content+"",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Text(
                                  "Note :- The data provided may not be accurate so please confront to doctor once",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(fontSize: 18),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
          bottomNavigationBar: BottomNavBar(2),
    )
    );
  }
}
