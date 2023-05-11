import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: (doctor_profile())));

class doctor_profile extends StatelessWidget {
  const doctor_profile({Key? key}) : super(key: key);

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
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
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
                                  IconButton(
                                    iconSize: 25,
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    //--------------------text----------------------------------------
                                    "Profile",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                              //---------------------------circleavatar-------------------------------
                              Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white60,
                                    radius: 50,
                                    child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/doctor.png'),
                                        radius: 45),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(75, 0, 0, 0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff6DAC67),
                                      radius: 14,
                                      child: IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {},
                                        color: Colors.white,
                                        iconSize: 17,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Dr.Aary Jadhav",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                //-----------------------------edit button-------------------------------------
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Expanded(
                                //------------------------------ container below edit button----------------------------
                                flex: 9,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 7, 0),
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
                                          topLeft: Radius.zero,
                                          topRight: Radius.zero,
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 5, 0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Designation",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Doctor",
                                                style: TextStyle(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Contact",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "+91 1234567890",
                                                style: TextStyle(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Qualification",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "M.B.B.S",
                                                style: TextStyle(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Gender",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "Male",
                                                style: TextStyle(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
                                              ),
                                              Text("Working Hours",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                "9:00am - 7:00pm",
                                                style: TextStyle(
                                                    color: Colors
                                                        .deepPurpleAccent
                                                        .shade200),
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
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hospital/Clinic Name",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Maternio Hospital",
                                  style: TextStyle(
                                      color: Colors.deepPurpleAccent.shade200),
                                ),
                                Text("Hospital/Clinic Address",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                  "B/109, Bhanuhans C.H.S, Navghar Road, \nBhayandar(east),Thane-401105",
                                  style: TextStyle(
                                      color: Colors.deepPurpleAccent.shade200),
                                ),
                                Text("Residential Address",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(
                                  "B/109, Bhanuhans C.H.S, Navghar Road, \nBhayandar(east),Thane-401105",
                                  style: TextStyle(
                                      color: Colors.deepPurpleAccent.shade200),
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
                  height: 40,
                ),
                Expanded(
                    //------------------------additional information--------------------------------------
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Additional Information",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    //---------------------3rd row with add. information-----------------------------
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7, 0, 7, 7),
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
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 35,
                                      child: Image.asset(
                                        'assets/icons/hospital.png',
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
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    child: Icon(
                                      Icons.work_history_outlined,
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
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 35,
                                      child: Image.asset(
                                        'assets/icons/doctoricon.png',
                                        color: Colors.deepPurpleAccent.shade700,
                                      )),
                                  Text(
                                    "Doctor Type \nGynaecologist",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.deepPurpleAccent.shade700,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            //-----------------------------bottom navigation bar----------------------
            bottomNavigationBar: GNav(
                gap: 10,
                backgroundColor: Colors.white,
                color: Colors.deepPurpleAccent.shade700,
                haptic: true,
                tabBorderRadius: 90,
                rippleColor: Colors.purple.shade50,
                hoverColor: Colors.black12,
                curve: Curves.easeOutExpo,
                activeColor: Colors.deepPurpleAccent.shade700,
                tabBackgroundColor: Colors.black26,
                padding: EdgeInsets.all(20),
                iconSize: 20,
                tabs: const [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.fire_truck_outlined,
                    text: 'Emergency',
                  ),
                  GButton(
                    icon: Icons.notifications_none,
                    text: 'Notifications',
                  ),
                  GButton(
                    icon: Icons.person_outline_outlined,
                    text: 'Messages',
                  ),
                ])));
  }
}
