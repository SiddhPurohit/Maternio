import 'package:flutter/material.dart';
import 'package:maternio_1/Additional%20Info/add_info.dart';
import 'package:maternio_1/Main%20screens/notifications.dart';


import '../Ambulance/ambulance.dart';
import '../Babysitter/babysittersearch.dart';
import '../doctor/doctorsearch.dart';
import '../doctor/profile.dart';
import 'home.dart';


class BottomNavBar extends StatelessWidget {
  int currentindexvalue = 0;
  BottomNavBar(this.currentindexvalue);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.black87,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          // primaryColor: Colors.red,
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.deepPurpleAccent.shade700))),
      child: BottomNavigationBar(
        //backgroundColor: Colors.deepPurpleAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home\n ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emergency_outlined),
            label: 'Ambulance\n ',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: 'Additional\n      Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile\n ',
          ),
        ],
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        currentIndex: currentindexvalue,
        selectedItemColor: Colors.deepPurpleAccent.shade700,
        unselectedItemColor: Colors.white,
        onTap: (int index) {
          currentindexvalue = index;
          if (index == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }
          if (index == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ambulance()));
          }

          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  add_info()));
          }
          if (index == 3) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  Profile()));
          }
        },
      ),
    );
  }
}