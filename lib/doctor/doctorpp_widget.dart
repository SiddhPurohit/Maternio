import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'doctr_profile_for_mother.dart';

class doctorlist extends StatefulWidget {
  String docname = "";
  String doctype = "";
  String docworkinghrs = "";
  String photo = "";
  String docgender = "";
  String docqualification = "";
  String doccontact = "";
  String dochospitalname = "";
  String dochospitaladd = "";
  String doclocation = "";

  doctorlist(
      this.docname,
      this.doctype,
      this.docworkinghrs,
      this.photo,
      this.doccontact,
      this.docgender,
      this.dochospitaladd,
      this.dochospitalname,
      this.docqualification,
      this.doclocation);

  @override
  State<doctorlist> createState() => _doctorlistState();
}

class _doctorlistState extends State<doctorlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.deepPurpleAccent,
            boxShadow: [
              BoxShadow(blurRadius: 5),
            ]),
        child: Row(
          children: [
            //Padding(padding: EdgeInsets.only(left: 20)),
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 50, top: 20),
              height: 100,
              width: 90,
              // color: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 80,
                // child: CircleAvatar(
                backgroundImage: NetworkImage(widget.photo),
                //   radius: 22,
                // ),
              ),
              //
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, left: 10),
                      child: Text(widget.docname,
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      margin: EdgeInsets.only(bottom: 11, top: 10),
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        widget.doctype + ", " + widget.doclocation,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //
                    //
                  ],
                ),
                //
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        // color: Colors.white,
                        margin: EdgeInsets.only(top: 14, right: 15),
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          ' Show Profile ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      //
                      //

                      Container(
                        height: 45,

                        margin: EdgeInsets.only(bottom: 10, right: 15),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurpleAccent.shade700,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        doctor_profile_message(
                                            widget.docname,
                                            widget.doctype,
                                            widget.docworkinghrs,
                                            widget.photo,
                                            widget.doccontact,
                                            widget.docgender,
                                            widget.dochospitaladd,
                                            widget.dochospitalname,
                                            widget.docqualification,
                                            widget.doclocation)));
                          },
                        ),
                        // ),
                      ),
                    ],
                  ),
                ),
                //
              ],
            ),
          ],
        ),
      ),
    );
  }
}
