import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bs_profile_others.dart';

class babysitterlist extends StatefulWidget {
  String name = "";
  String type = "";
  String location = "";
  String workinghrs = "";
  String photo = "";
  String gender = "";
  String qualification = "";
  String contact = "";
  String address = "";
  String height="";
  String fees="";
  String experience="";


  babysitterlist(
      this.name,
      this.type,
      this.location,
      this.address,
      this.contact,
      this.experience,
      this.fees,
      this.gender,
      this.height,
      this.qualification,
      this.workinghrs,
      this.photo,);


  @override
  State<babysitterlist> createState() => _babysitterlistState();
}

class _babysitterlistState extends State<babysitterlist> {
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
              margin:
              EdgeInsets.only(left: 10, bottom: 50, top: 20),
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
                      child: Text(widget.name,
                          style: GoogleFonts.poppins(
                              fontSize: 30,
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
                        widget.type+", "+widget.location,
                        style: TextStyle(
                          fontSize: 18,
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

                        margin:
                        EdgeInsets.only(bottom: 10, right: 15),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 30,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary:
                            Colors.deepPurpleAccent.shade700,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => babyssitter_profile_other(
                                      widget.name,
                                      widget.type,
                                      widget.location,
                                      widget.address,
                                      widget.contact,
                                      widget.experience,
                                      widget.fees,
                                      widget.gender,
                                      widget.height,
                                      widget.qualification,
                                      widget.workinghrs,
                                      widget.photo,
                                    )));
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
