import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

  void startTimer() {
    Timer(Duration(seconds: 3), (){
      // navigateUser();
    } );
  }

  // void navigateUser() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   var status = preferences.getBool('isLoggedIn') ?? false;
  //   print(status);
  //   if(status){
  //     Navigator.pushReplacementNamed(context, "/home") ;
  //   } else {
  //     Navigator.pushReplacementNamed(context, "/login");
  //   }
  // }
}
