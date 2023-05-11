import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Babysitter/babysitter_profile.dart';
import 'package:maternio_1/Baby/BabyFormPageGradient.dart';
import 'package:maternio_1/Pregnant%20Women/PregnantFormPageGradient.dart';

class ProfileSelection extends StatefulWidget {
  const ProfileSelection({Key? key}) : super(key: key);

  @override
  State<ProfileSelection> createState() => _ProfileSelectionState();
}

class _ProfileSelectionState extends State<ProfileSelection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: CircleAvatar(
                  minRadius: 25.0,
                  backgroundImage: AssetImage("assets/logocolor.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text(
                  "Maternio",
                  style: GoogleFonts.poppins(fontSize: 24),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: Row(
              children: [
                Text(
                  "Hello ",
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
                Text(
                  FirebaseAuth.instance.currentUser!.phoneNumber.toString(),
                  style: GoogleFonts.akshar(
                      fontWeight: FontWeight.w500, fontSize: 17),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Text(
                  "I believe that the greatest gift you can give your\nfamily and the world is a healthy you.",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(29, 10, 0, 0),
                child: Text(
                  "Who Am I?",
                  style: GoogleFonts.akshar(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.deepPurpleAccent.shade700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 9, 20, 0),
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent.shade100,
                  minRadius: 17.0,
                  backgroundImage: AssetImage("assets/question.png"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
              flex: 10,
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 5, 25),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                      flex: 3,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BabyFormPage()));
                                        },
                                        child: SingleChildScrollView(
                                          child: Container(
                                            width: 180,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                            20, 20, 0, 0),
                                                    child: Image.asset(
                                                      "assets/Baby1.png",
                                                      width: 25,
                                                      height: 25,
                                                    )),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          20, 15, 0, 0),
                                                  child: Text(
                                                    "Baby/Mother",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 38,
                                                ),
                                                Image.asset("assets/mother.png")
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 5,
                                                ),
                                              ],
                                              color: Colors
                                                  .deepPurpleAccent.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            //alignment: Alignment.center,
                                          ),
                                        ),
                                      )),
                                  SizedBox(
                                    height: 200,
                                  ),
                                  // Expanded(
                                  //     flex: 2,
                                  //     child: InkWell(onTap: () {
                                  //       Navigator.pushReplacement(context,
                                  //           MaterialPageRoute(
                                  //               builder: (context) =>
                                  //                   doctor_profile()));
                                  //     },
                                  //       child: Container(
                                  //         child: Column(
                                  //           crossAxisAlignment:
                                  //           CrossAxisAlignment.start,
                                  //           children: <Widget>[
                                  //             Padding(
                                  //                 padding:
                                  //                 const EdgeInsets.fromLTRB(
                                  //                     8, 15, 0, 0),
                                  //                 child: Image.asset(
                                  //                   "assets/Baby1.png",
                                  //                   width: 25, height: 25,)
                                  //             ),
                                  //             Padding(
                                  //               padding:
                                  //               const EdgeInsets.fromLTRB(
                                  //                   8, 10, 0, 0),
                                  //               child: Text(
                                  //                 "Baby",
                                  //                 style: GoogleFonts
                                  //                     .poppins(
                                  //                     fontWeight: FontWeight
                                  //                         .w600,
                                  //                     fontSize: 18),
                                  //               ),
                                  //             ),
                                  //             SizedBox(height: 1,),
                                  //             Image.asset(
                                  //               "assets/mother.png",
                                  //               width: 150, height: 150,)
                                  //           ],
                                  //         ),
                                  //         decoration: BoxDecoration(
                                  //             boxShadow: [
                                  //               BoxShadow(
                                  //                 color: Colors.black,
                                  //                 blurRadius: 5,),
                                  //             ],
                                  //             color: Colors
                                  //                 .deepPurpleAccent
                                  //                 .shade100,
                                  //             borderRadius:
                                  //             BorderRadius.circular(35)),
                                  //         alignment: Alignment.center,
                                  //       ),
                                  //     )),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 25),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PregnantFormPage()));
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 15, 0, 0),
                                        child: Icon(
                                          Icons.pregnant_woman_sharp,
                                          size: 30,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 0),
                                        child: SingleChildScrollView(
                                          child: Text(
                                            "Pregnant Women",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Image.asset(
                                        "assets/pregnantw.png",
                                        width: 250,
                                        height: 200,
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 5,
                                        ),
                                      ],
                                      color: Colors.deepPurpleAccent.shade100,
                                      borderRadius: BorderRadius.circular(35)),
                                  alignment: Alignment.center,
                                ),
                              )),
                          SizedBox(
                            height: 150,
                          ),
                          // Expanded(
                          //     flex: 3,
                          //     child: InkWell(onTap: () {},
                          //       child: Container(
                          //         child: Column(
                          //           crossAxisAlignment:
                          //           CrossAxisAlignment.start,
                          //           children: <Widget>[
                          //             Padding(
                          //               padding:
                          //               const EdgeInsets.fromLTRB(
                          //                   15, 30, 0, 0),
                          //               child: Icon(
                          //                 Icons.pregnant_woman_sharp,
                          //                 size: 30,
                          //                 color: Colors.black54,
                          //               ),
                          //             ),
                          //             Padding(
                          //               padding:
                          //               const EdgeInsets.fromLTRB(
                          //                   25, 10, 0, 0),
                          //               child: Text(
                          //                 "Pregnant",
                          //                 style: GoogleFonts.poppins(
                          //                     fontWeight: FontWeight.w600,
                          //                     fontSize: 18),
                          //               ),
                          //             ),
                          //             SizedBox(height: 30,),
                          //             Image.asset(
                          //               "assets/pregnantw.png", width: 200,
                          //               height: 200,)
                          //           ],
                          //         ),
                          //         decoration: BoxDecoration(
                          //           boxShadow: [
                          //             BoxShadow(color: Colors.black,
                          //               blurRadius: 5,),
                          //           ],
                          //           color: Colors.deepPurpleAccent.shade100,
                          //           borderRadius: BorderRadius.circular(35),
                          //         ),
                          //         alignment: Alignment.center,
                          //       ),
                          //     )),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      )),
    );
  }
}
