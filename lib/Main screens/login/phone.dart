// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:maternio_1/Main%20screens/login/verify.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countryController = TextEditingController();
  var phone = "";
  bool isLoading = false;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if(isLoading){
    //   return LoadingScreen();
    // }
    //Uncomment the above code for integrating a loading screen
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://i.postimg.cc/90DryqfS/Untitled-design.gif"),

              //Image.asset("assets/babypp.png"),
              //Add your logo here
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Phone Verification",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We need to register your phone before getting started!",
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              //------------------------------------------------------------------------
              Form(
                key: formkey,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  onChanged: (value) {
                    phone = value;
                  },
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                      return 'Enter Correct Mobile Number';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                      isDense: true,
                      fillColor: Colors.deepPurpleAccent,
                      prefixText: '+91 |  ',
                      prefixStyle: TextStyle(color: Colors.white, fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Phone',
                      hintStyle: const TextStyle(color: Colors.white),
                      errorStyle: const TextStyle(
                        color: Color(0xff6100FF),
                        fontSize: 12,
                        height: 0.6,
                      )),
                ),
              ),
              //------------------------------------------------------------------------
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                        primary: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      setState(() {
                        if (formkey.currentState!.validate()) {
                          isLoading = true;
                        }
                      });
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${countryController.text + phone}',
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          MyPhone.verify = verificationId;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyVerify()));
                          setState(() {
                            isLoading = false;
                          });
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    child: const Text(
                      "Verify Number",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
