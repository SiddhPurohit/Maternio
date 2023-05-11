import 'package:flutter/material.dart';



class doctor_info extends StatefulWidget {
  doctor_info({Key? key}) : super(key: key);

  @override
  State<doctor_info> createState() => _doctor_infoState();
}

class _doctor_infoState extends State<doctor_info> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: //
            Scrollbar(
          child:
              //
              Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    child: Center(
                      child: Text(
                        " Doctor ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Divider(
                    height: 3,
                    color: Colors.transparent,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 680,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        height: 170,
                        width: 700,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(98, 2, 255, 0.5),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(193, 188, 188, 1),
                              offset: const Offset(0, 12),
                              blurRadius: 13,

                              spreadRadius: 3, //New
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            //Padding(padding: EdgeInsets.only(left: 20)),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, bottom: 50, top: 20),
                              height: 130,
                              width: 90,
                              // color: Colors.blue,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 80,
                                // child: CircleAvatar(
                                backgroundImage: NetworkImage('assets/img.png'),
                                //   radius: 22,
                                // ),
                              ),
                              //
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 25, left: 20),
                                        child: Text("Dr. Zain Blossom",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 20,
                                        margin: EdgeInsets.only(
                                            bottom: 11, top: 15),
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          ' Gynecologist, Mumbai ',
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 50,
                                        // color: Colors.white,
                                        margin:
                                            EdgeInsets.only(top: 14, right: 15),
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          ' Show Profile ',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                      //
                                      //

                                      Container(
                                        height: 35,

                                        margin: EdgeInsets.only(
                                            bottom: 1, right: 15),
                                        child: ElevatedButton(
                                          child: Icon(
                                            Icons.arrow_circle_right_outlined,
                                            size: 35,
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
                                    ],
                                  ),
                                  //
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
                //
                //

                //

                //

                ///
                //
              ),
            ],
          ),
        ),
      ),
    );
  }
}
