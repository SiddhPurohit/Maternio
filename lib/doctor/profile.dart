// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/About%20Us/aboutus.dart';
import 'package:maternio_1/Babysitter/baby_profile.dart';
import 'package:maternio_1/Baby/BabyFormPageGradient.dart';
import 'package:maternio_1/Pregnant%20Women/PregnantFormPageGradient.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

import '../Main screens/login/phone.dart';
import '../Main screens/navbar.dart';


const logOut = 'assets/Logout.svg';
const noti = 'assets/Notification.svg';
const heart = 'assets/Heart.svg';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _HomePageState();
}

class _HomePageState extends State<Profile> {
  String name ='';
  String phonenumber='';
  String imgsrc='';
  void initState() {
    super.initState();
    getData();
  }
  Future getData() async{
    await FirebaseFirestore.instance.collection("usersData").doc(FirebaseAuth.instance.currentUser!.uid.toString()).get().then((value) async{
      setState((

          ) {
        if(value['Type of Customer']=='Baby'){
          name=value['Baby Name'];
          imgsrc="assets/babypp.png";
          phonenumber=value['Parent Contact Number'];
        }
        else{
          name=value['Pregnant Women Name'];
          imgsrc="assets/pregnantpp.png";
          phonenumber=value['Contact Number'];
        }



      });
    });
    // int currentValue=consumed;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          //Profile Text -------------------------------------------------------
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 0),
              child: Text(
                "Profile",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  )
              ),
            ),
          ),
              SizedBox(height: 20,),
          // Profile Container -------------------------------------------------
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 33),
            child: InkWell(onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          baby_profile()));
            },
              child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        //color: Color.fromRGBO(193, 188, 188, 1),
                        offset: const Offset(0.5, 3),
                        blurRadius: 20,
                        spreadRadius: 1, //New
                      )
                    ],
                    color: Color(0xff6100FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 16),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                   imgsrc),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.5,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(width: 13),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5),
                          Text(
                            phonenumber,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      //---------
                      Spacer(),
                      SizedBox(width: 16)
                    ],
                  )),
            ),
          ),

          //Logout -------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      //color: Color.fromRGBO(193, 188, 188, 1),
                      offset: const Offset(0.5, 3),
                      blurRadius: 20,
                      spreadRadius: 1, //New
                    )
                  ]),
              child: InkWell(onTap: (){
                FirebaseAuth.instance.signOut();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyPhone()));
              },
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(width: 16),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffF6F6F6),
                      child: Image.asset("assets/exit.png",color: Colors.deepPurpleAccent,
                        width: 22,
                        height: 22,
                      ),
                    ),
                    SizedBox(width: 13),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Log out',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff555555)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Further secure your account for safety',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffABABAB)),
                        )
                      ],
                    ),
                    //---------
                    SizedBox(width: 16)
                  ],
                ),
              ),
            ),
          ),

          //Logout -------------------------------------------------------------
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(21, 20, 0, 7),
              child: Text(
                "More",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          //------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      //color: Color.fromRGBO(193, 188, 188, 1),
                      offset: const Offset(0.5, 3),
                      blurRadius: 20,
                      spreadRadius: 1, //New
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(width: 16),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffF7F2FF),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Image.asset("assets/customer-support.png",color: Colors.deepPurpleAccent,
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 13),
                      Text(
                        'Help & Support',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff555555)),
                      ),
                      //---------
                      Spacer(),
                      IconButton(
                          onPressed: ()
                          //{
                           // FlutterPhoneDirectCaller.callNumber('tel:+919004187496');
                         // },
                          {
                          launch('tel:+919004187496');
                           },
                          icon: Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.black, size: 16)),
                      SizedBox(width: 16)
                    ],
                  ),
              
                ],
              ),
            ),
          ),
          //------------
        ],
      ),
      bottomNavigationBar: BottomNavBar(3),
    );
  }
}
