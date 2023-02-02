

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking/screens/authentication/login.dart';
import 'package:parking/utils/constants.dart';

class Onboard_ extends StatelessWidget {
  final String image;
  final String boldt1;
  final String boldt2;
  final String smallt1;
  final String smallt2;
  final String smallt3;
  final Color dotColor1;
  final Color dotColor2;
  final Color dotColor3;
  final bool transparent;
  final BuildContext context;

  Onboard_({
    required this.image,
    required this.boldt1,
    required this.boldt2,
    required this.smallt1,
    required this.smallt2,
    required this.smallt3,
    required this.dotColor1,
    required this.dotColor2,
    required this.dotColor3,
    required this.transparent,
    required this.context,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Constants.height(context) * 0.6,
            width: Constants.width(context),
            child: Container(
              decoration: BoxDecoration(
                // backgroundBlendMode:BlendMode.clear ,
                color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ))),
            ),
          ),
          Container(
            height: Constants.height(context) * 0.3,
            width: Constants.width(context),
            // color: Colors.blue,
            child: Column(
              children: [
                boldText(boldt1),
                boldText(boldt2),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 25),
                  child: Column(
                    children: [
                      smallText(smallt1,15),
                      smallText(smallt2,15),
                      smallText(smallt3,15,),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: Constants.height(context) * 0.1,
            width: Constants.width(context),
            child: transparent? next(context) :Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                dots(dotColor1),
                SizedBox(width: 10,),
                dots(dotColor2),
                SizedBox(width: 10),
                dots(dotColor3),
              ],
            ),
          )
        ],
      ),
    );
  }







  Container dots(Color color) {
    return Container(
      height: 10,
      width: 20,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }

  static Text smallText(String text, double font) {
    return Text(
      text,
      style: GoogleFonts.montserrat(fontWeight: FontWeight.w500,fontSize: font),
    );
  }

  static Text boldText(String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 33),
    );
  }
  
  Container next(context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
        },
        child: CircleAvatar(
          backgroundColor: Constants.primaryColor,
          foregroundColor: Constants.whiteColor,
          child: Icon(
            Icons.arrow_right_alt_sharp,
            weight: 100,
            size: 50,
            ),
        ),
      ),
    );
  }
}
