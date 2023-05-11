import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class babysitter_profile extends StatefulWidget {
  const babysitter_profile({Key? key}) : super(key: key);

  @override
  State<babysitter_profile> createState() => _babysitter_profileState();
}

class _babysitter_profileState extends State<babysitter_profile> {
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
                          SizedBox(
                            height: 25,
                          ),
                          //---------------------------circleavatar-------------------------------
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white60,
                                radius: 50,
                                child: CircleAvatar(
                                    backgroundImage:
                                    AssetImage('assets/doctorpp.png'),
                                    radius: 45),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(75, 0, 0, 0),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff6DAC67),
                                  radius: 15,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.edit,
                                        color: Colors.white, size: 14),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Text("Dr.Aary Jadhav",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
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
                          //-----------------------------edit button-------------------------------------
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 15, 25, 0),
                                      child: Text("Edit",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )),
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
                                      15, 15, 0, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
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
                                                    .deepPurpleAccent
                                                    .shade700,
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
                                            "1234567890",
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent
                                                    .shade700,
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
                                            "M.B.B.S",
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
                                            "Male",
                                            style: GoogleFonts.poppins(
                                                color: Colors
                                                    .deepPurpleAccent
                                                    .shade700,
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
                                            "9:00am - 7:00pm",
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hospital/Clinic Name",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Text(
                              "Maternio Hospital",
                              style: GoogleFonts.poppins(
                                  color: Colors.deepPurpleAccent.shade700,
                                  //fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                "Hospital/Clinic Address",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                            ),
                            Text(
                              "B/109, Bhanuhans C.H.S, Navghar Road, Bhayandar(east),\nThane-401105",
                              style: GoogleFonts.poppins(
                                  color: Colors.deepPurpleAccent.shade700,
                                  //fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                "Residential Address",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                            ),
                            Text(
                              "B/109, Bhanuhans C.H.S, Navghar Road, Bhayandar(east),\nThane-401105",
                              style: GoogleFonts.poppins(
                                  color: Colors.deepPurpleAccent.shade700,
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
                                "My Care \nHospital,Vasai",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.deepPurpleAccent.shade700,
                                    fontWeight: FontWeight.bold),
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
                                "Working Hours\n9am - 7pm",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.deepPurpleAccent.shade700,
                                    fontWeight: FontWeight.bold),
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
                                padding:
                                const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Doctor Type \nGynaecologist",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color:
                                      Colors.deepPurpleAccent.shade700,
                                      fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
