import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:parking/screens/onboard/onboard.dart';
import 'package:parking/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState(){
    super.initState();
    startTimer();
  }
   Future<Timer> startTimer() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, Route);
   }
   void Route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboard()));
   }

   
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Constants.primaryColor,
        body: Container(
            height: height,
            width: width,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.33333,
                    width: width,
                    // color: Colors.amber,
                  ),
                  Container(
                    height: height * 0.33333,
                    width: 250,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Park",
                            style: TextStyle(
                                fontFamily: "Ananda",
                                fontSize: 100,
                                color: Constants.whiteColor)),
                        Text("ir",
                            style: TextStyle(
                                fontFamily: "Ananda",
                                fontSize: 100,
                                color: Constants.whiteColor))
                      ],
                    )),
                  ),
                ])));
  }
  
 
}
