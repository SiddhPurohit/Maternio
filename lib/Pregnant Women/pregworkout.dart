import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Baby/baby_massage.dart';
import 'package:maternio_1/Main%20screens/Drawer.dart';
import 'package:maternio_1/Main%20screens/profile_selection.dart';
import 'package:maternio_1/Pregnant%20Women/pregworkoutenglish.dart';
import 'package:maternio_1/Pregnant%20Women/pregworkouthindi.dart';
import 'package:maternio_1/Pregnant%20Women/ytpage.dart';
import '../Main screens/navbar.dart';
import '../Pregnant Women/pregnantmycare.dart';
import '../doctor/doctor_profile.dart';
import '../doctor/profile.dart';


class PregWrokout extends StatefulWidget {
  PregWrokout({Key? key}) : super(key: key);

  @override
  State<PregWrokout> createState() => _PregWrokoutState();
}

class _PregWrokoutState extends State<PregWrokout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        backgroundColor: Colors.deepPurpleAccent.shade700,
        appBar: AppBar(
          title: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
              child: Text("Workout Videos",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 22,color: Colors.deepPurpleAccent.shade700
              )),
            ),
          ),
          elevation: 8,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.deepPurpleAccent.shade700,
                )),
          ),
        ),
        body: //
            Scrollbar(
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>
                //
                Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Container(
                    child: Text('Select Language for Your Workout',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,color: Colors.white
                        )),
                    height: 50,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 0),
                      child: InkWell(onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PregExcercisePageEng()));
                      },
                        child: Text(
                          " ENGLISH 'अंग्रेज़ी'",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                        iconSize: 25,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PregExcercisePageEng()));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 160,
                        width: 430,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: InkWell(onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PregExcercisePageEng()));},
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("https://www.vidyalai.com/blog/content/images/2020/12/eng-2.jpg"),
                              fit: BoxFit.cover),
                          // color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                //color: Color.fromRGBO(193, 188, 188, 1),
                              offset: const Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1,//New
                                )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // listview.builder(horizontal end)
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 0),
                      child: InkWell( onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PregExcercisePageHindi()));
                      },
                        child: Text(
                          " HINDI 'हिंदी'",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ),
                    ),
                    IconButton(
                        iconSize: 25,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PregExcercisePageHindi()));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 160,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 160,
                        width: 430,
                        margin: EdgeInsets.only(left: 15, top: 10),

                        // color: Colors.blue,

                        child: InkWell(onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PregExcercisePageHindi()));
                        },
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            ],
                          ),
                        ),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:NetworkImage("https://www.jagranimages.com/images/14_09_2019-hindi_diwas_1_19576338.jpg"),
                              fit: BoxFit.cover),
                          // color: Colors.deepPurpleAccent.shade700,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              //color: Color.fromRGBO(193, 188, 188, 1),
                              offset: const Offset(1, 1),
                              blurRadius: 3,
                              spreadRadius: 1, //New
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                  // listview.builder(horizontal end)
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 50,),
                SizedBox(
                  height: 10,
                )
              ],
            ), // column
          ),
          // listview.builder(vertical end)
        ),
        bottomNavigationBar: BottomNavBar(0),
      ),
    );
  }
}
