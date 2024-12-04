import 'dart:async';

import 'package:at_watch/view/Login_Page.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Image.asset("assets/images/Logos.png",height: 98,width: 163.48)),
        color: Color(0xffFCDB04),

      ),
    );
  }
}
