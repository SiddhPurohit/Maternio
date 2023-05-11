import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maternio_1/Main%20screens/home.dart';
import 'package:maternio_1/doctor/profile.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Main screens/navbar.dart';
import '../Baby/BabyFormPageGradient.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class doctor_profile_message extends StatefulWidget {
  String docname = "";
  String doctype = "";
  String docworkinghrs = "";
  String photo = "";
  String docgender = "";
  String docqualification = "";
  String doccontact = "";
  String dochospitalname = "";
  String dochospitaladd = "";
  String doclocation="";

  doctor_profile_message(
      this.docname,
      this.doctype,
      this.docworkinghrs,
      this.photo,
      this.doccontact,
      this.docgender,
      this.dochospitaladd,
      this.dochospitalname,
      this.docqualification,this.doclocation);

  @override
  State<doctor_profile_message> createState() => _doctor_profile_messageState();
}

class _doctor_profile_messageState extends State<doctor_profile_message> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //=============main body column---------------------------------------------------------
        body: Column(
          children: [
            //----------------------first row 40%-------------------------------------------------
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    //-------------------------first container profile image----------------------------
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0, // soften the shadow
                          )
                        ],
                        color: Colors.deepPurpleAccent.shade100,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(20)),
                      ),
                      height: double.infinity,
                      // width: 180,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //---------------back icon----------------------------------------
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: IconButton(
                                  iconSize: 25,
                                  icon: const Icon(Icons.arrow_back_ios),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Text(
                                  //--------------------text----------------------------------------
                                  "Profile",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          //---------------------------circleavatar-------------------------------
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white60,
                                radius: 60,
                                child: CircleAvatar(
                                    backgroundImage:
                                       NetworkImage(widget.photo),
                                    radius: 55),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(widget.docname,
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    //----------------------------column  of first row----------------------------------
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            //-----------------------------message button-------------------------------------
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(82, 15, 25, 0),
                                child: InkWell(
                                  onTap: () {
                                    launchUrl(
                                      Uri.parse("https://api.whatsapp.com/send?phone=" +
                                          widget.doccontact +
                                          "&text=Hi,Dr. " +
                                          widget.docname+
                                          " on Maternio"),
                                      mode: LaunchMode.externalApplication,
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.message_rounded),
                                      Text("Message",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                            //------------------------------ container below edit button----------------------------
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 5, // soften the shadow
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 15, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Designation",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            "Doctor",
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent.shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Contact",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            widget.doccontact,
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent.shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Qualification",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            widget.docqualification,
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent.shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Gender",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            widget.docgender,
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent.shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            "Working Hours",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            widget.docworkinghrs,
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent.shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // height: double.infinity,
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              //--------------------------------2nd row (address container)---------------------------
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.0, // soften the shadow
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hospital/Clinic Name",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500, fontSize: 17),
                              ),
                              Text(
                                widget.dochospitalname,
                                style: GoogleFonts.poppins(
                                    color: Colors.deepPurpleAccent.shade700,
                                    //fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  "Hospital/Clinic Address",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500, fontSize: 17),
                                ),
                              ),
                              Text(
                                widget.dochospitaladd,
                                  maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.deepPurpleAccent.shade700,
                                    //fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // height: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
                  child: Text(
                    "Additional Information",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                //---------------------3rd row with add. information-----------------------------
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(7, 10, 0, 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        //-----------------------------------------1st container(mycare)--------------------
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0, // soften the shadow
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 40,
                                  child: Image.asset(
                                    'assets/hospital.png',
                                    color: Colors.deepPurpleAccent.shade700,
                                  )),
                              Text(
                                widget.dochospitalname+", "+widget.doclocation,
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepPurpleAccent),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //------------------------------2nd conatiner (working hours)---------------------------------------
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0, // soften the shadow
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                child: Icon(
                                  Icons.work_history_outlined,
                                  size: 30,
                                  color: Colors.deepPurpleAccent.shade700,
                                ),
                              ),
                              Text(
                                "Working Hours\n"+widget.docworkinghrs,
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepPurpleAccent),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        //----------------------------------3rd container(doctor)------------------------------------
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0, // soften the shadow
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 30,
                                  child: Image.asset(
                                    'assets/doctoricon.png',
                                    color: Colors.deepPurpleAccent.shade700,
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Doctor Type \n"+widget.doctype,
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.deepPurpleAccent),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            )
          ],
        ),

        //-----------------------------bottom navigation bar-------------------
        bottomNavigationBar: BottomNavBar(0),
      ),
    );
  }
}
