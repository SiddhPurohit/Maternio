import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maternio_1/Main%20screens/login/phone.dart';
import 'package:maternio_1/Main%20screens/welcome_screen.dart';



import 'Main screens/home.dart';
import 'Main screens/profile_selection.dart';


class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return
      StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot)
          {
            if(snapshot.hasData)
            {
               if(FirebaseAuth.instance.currentUser!.displayName==null){
                return ProfileSelection();

               }
               else{
                return HomePage();
               }
              //uncomment this and remove the below line for preg page to come
              return HomePage();

            }
            else
            {
              return MyPhone();
            }
          }
      );

  }
}
