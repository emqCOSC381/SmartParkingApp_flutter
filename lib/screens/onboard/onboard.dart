import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking/utils/constants.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: Constants.height(context) * 0.6,
                  width: Constants.width(context),
                  
                  child: Container(
                    
                    decoration: BoxDecoration(
                    
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          Constants.onboard1,
                          )
                      )
                    ),

                  ),
                ),
                Container(
                  height: Constants.height(context) * 0.3,
                  width: Constants.width(context),
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      Text(
                        "Find Parking Spaces",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 33
                        ),
                      ),
                      Text(
                        "Around You Easily!",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 30
                        )
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left:50.0,right: 20),
                        child: Column(
                          children: [
                            Text(
                              "Do fugiat tempor ex amet labore aliqua exercitation",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500
                                
                              ),
                              
                              ),
                              Text(
                              "officia qui eu elit commodo elit magna.",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500
                                
                              ),
                              
                              ),
                              Text(
                              "Sit dolor ",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500
                                
                              ),
                              ),
                          ],
                        ),
                      )
                        
                    ],
                  ),
                ),
                Container(
                  height: Constants.height(context) * 0.1,
                  width: Constants.width(context),
                  // color: Colors.yellow,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                        color: Constants.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                        color: Constants.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                        color: Constants.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
