//--------------------------------baby_screens--------------------------
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:maternio_1/Baby/BabyFormPageGradient.dart';

import '../Main screens/navbar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class baby_profile extends StatefulWidget {
  const baby_profile({Key? key}) : super(key: key);

  @override
  State<baby_profile> createState() => _baby_profileState();
}

class _baby_profileState extends State<baby_profile> {
  String name = '';
  String dob='';
  String type='';
  String imgsrc='';
  String gender='';
  String age='';
  String height='';
  String weight='';
  String allergy='';
  String bloodgroup='';
  String phonenumber='';
  String address='';
  String postalcode='';
  void initState() {
    super.initState();
    getData();
  }
  Future getData() async{
    await FirebaseFirestore.instance.collection("usersData").doc(FirebaseAuth.instance.currentUser!.uid.toString()).get().then((value) async{
      setState((

          ) {
        if(value["Type of Customer"]=="Baby"){
          name=value['Baby Name'];
          dob=value['D-O-B'];
          imgsrc="assets/babypp.png";
          gender=value['Gender'];
          age=value['Baby Age'];
          height=value['Baby Height'];
          weight=value['Baby Weight'];
          allergy=value['Allergy'];
          bloodgroup=value['Baby Blood Group'];
          phonenumber=value['Parent Contact Number'];
          address=value['Residential Address'];
          postalcode=value['Postal Code'];
          type=value['Type of Customer'];
        }
        else{
          name=value['Pregnant Women Name'];
          dob=value['D-O-B'];
          imgsrc="assets/pregnantpp.png";
          gender=value['Gender'];
          age=value['Pregnant Women Age'];
          height=value['Pregnant Women Height'];
          weight=value['Pregnant Women Weight'];
          allergy=value['Allergy'];
          bloodgroup=value['Pregnant Women Blood Group'];
          phonenumber=value['Contact Number'];
          address=value['Residential Address'];
          postalcode=value['Postal Code'];
          type=value['Type of Customer'];
        }



      });
    });
    // int currentValue=consumed;
  }

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
                  flex: 5,
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
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                    child: IconButton(
                                      iconSize: 25,
                                      icon: const Icon(Icons.arrow_back_ios),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(0, 15, 0, 0),
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
                              //---------------------------circleavatar-------------------------------
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white60,
                                      radius: 60,
                                      child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage(imgsrc),
                                          radius: 55),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Flexible(
                                child: Text(
                                  name,
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      //fontWeight: FontWeight.w500,
                                      fontSize: 20,),
                                  textAlign: TextAlign.center,
                                ),
                              ),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        82, 15, 25, 0),
                                    child: InkWell(onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => BabyFormPage()));
                                    },
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                              //------------------------------ container below edit button----------------------------
                                flex: 5,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(0, 0, 7, 0),
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
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 30, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Profile",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                type,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),

                                              Text(
                                                "Date of Birth",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                dob,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
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
                                                gender,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                "Age",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                age,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
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
                  //--------------------------------2nd row ---------------------------
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: Row(
                      children: <Widget>[
                        //---------------------------------2nd row (1st container)-----------------------
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 9,
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0, // soften the shadow
                                      )
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20
                                        ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 20, 0, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Height",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                               height,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Weight",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                weight,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Allergy",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                allergy,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
                                                    //fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                              Text("Blood Group",
                                                style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 17),),
                                              Text(
                                                bloodgroup,
                                                style: GoogleFonts.poppins(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade700,
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
                              SizedBox(
                                height: 50,
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //-------------------------2nd row(2nd container)------------------------------------
                        Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2.0, // soften the shadow
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Contact No.",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),
                                        ),
                                        Text(
                                          phonenumber,
                                          style: GoogleFonts.poppins(
                                              color: Colors
                                                  .deepPurpleAccent
                                                  .shade700,
                                              //fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Address",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),),
                                        Flexible(
                                          child: Text(
                                            address,
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent
                                                    .shade700,
                                                //fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Zip/Postal Code",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17),),
                                        Text(
                                          postalcode,
                                          style: GoogleFonts.poppins(
                                              color: Colors
                                                  .deepPurpleAccent
                                                  .shade700,
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            //-----------------------------bottom navigation bar----------------------
            bottomNavigationBar: BottomNavBar(3),
        )
    );
  }
}
