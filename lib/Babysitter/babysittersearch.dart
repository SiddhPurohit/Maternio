import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Babysitter/babysitterpp_widget.dart';
import 'package:maternio_1/Babysitter/bs_profile_others.dart';
import 'package:maternio_1/doctor/profile.dart';

import '../Main screens/navbar.dart';
import '../doctor/doctr_profile_for_mother.dart';

class babysittersearch extends StatefulWidget {
  babysittersearch({Key? key}) : super(key: key);

  @override
  State<babysittersearch> createState() => _babysittersearchState();
}

class _babysittersearchState extends State<babysittersearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
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
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Text(
                'Babysiter',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('babysitter')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text("No Babysitter Found",
                          style: TextStyle(color: Colors.grey)),
                    );
                  } else {
                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: ((context, index) {
                          DocumentSnapshot documentSnapshot =
                              snapshot.data!.docs[index];
                          return babysitterlist(
                            documentSnapshot['babysittername'],
                            documentSnapshot['type'],
                            documentSnapshot['location'],
                            documentSnapshot['address'],
                            documentSnapshot['babysitterContact'],
                            documentSnapshot['experience'],
                            documentSnapshot['fees'],
                            documentSnapshot['gender'],
                            documentSnapshot['height'],
                            documentSnapshot['qualification'],
                            documentSnapshot['workinghours'],
                            documentSnapshot['photo'],
                          );
                        }));
                  }
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(0),
    ));
  }
}
