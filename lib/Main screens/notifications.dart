import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maternio_1/Main%20screens/navbar.dart';

class notification extends StatefulWidget {
  notification ({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
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
                //-------------------------------diet chart text -------------------------------
                Expanded(
                    flex: 1,
                    child: Container(
                  child: Center(child: Text('Notifications',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),)),
                )
                ),
                //-------------------------------Weeks--------------------------------------

                //-----------------------------Days------------------------------------------------
                Expanded(
                  flex: 9,
                  child: ListView(
                    children: [
                      //------------------------------------ DAy 1---------------------------------
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                             Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //---------------------------------------------DAY 2--------------------------------------------
                     Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                            Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                             Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                             Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                             Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                            Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                             Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                            Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 5),]
                          ),
                          height: 70,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(flex: 1,),
                              CircleAvatar(child: CircleAvatar(child:Image.asset("name"),backgroundColor: Colors.deepPurpleAccent.shade100,radius: 17.5,),backgroundColor: Colors.black,),
                              Spacer(
                                flex: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dr. Noman No',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Gynecologist'),
                                ],
                              ),
                              Spacer(
                                flex: 7,
                              ),
                             Container(
                                        height: 30,
                                        width: 50,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 22,
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .deepPurpleAccent.shade700,
                                            elevation: 0,
                                          ),
                                          onPressed: () {},
                                        ),
                                        // ),
                                      ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
        ),
        bottomNavigationBar: BottomNavBar(2),
      )
      );
  }
}