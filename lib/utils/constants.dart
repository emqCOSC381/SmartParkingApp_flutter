import 'package:flutter/material.dart';

class Constants{
  // Colors
  // static final Color primaryColor = Color(0xFF500F9E);
  static final Color primaryColor = Color(0xFFdc143c);
  static final Color primaryFaded = Color(0x66dc143c);
  static final Color whiteColor = Color(0xFFffffff);
  static final Color darkColor = Color(0xFF2e3333);
  static final Color transparentColor = Colors.transparent;



  // images
  static final String splash = "assets/imgs/png/splash/splash1.png";
  static final String onboard1 = "assets/imgs/png/onboard/onboard11.png";
  static final String onboard2 = "assets/imgs/png/onboard/onboard2.png";
  static final String onboard3 = "assets/imgs/png/onboard/onboard3.png";

  static final String login1 = "assets/imgs/png/letsin/login1.png";



  //Dimensions
    static double width(BuildContext context){return MediaQuery.of(context).size.width;}
    static double height(BuildContext context){return MediaQuery.of(context).size.height;}
}