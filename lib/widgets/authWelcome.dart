import 'package:flutter/material.dart';
import 'package:parking/screens/authentication/authWelcome.dart';
import 'package:parking/screens/authentication/loginPage.dart';
import 'package:parking/screens/authentication/signupPage.dart';
import 'package:parking/screens/home_page/homepage.dart';
import 'package:parking/widgets/onboard.dart';

class eButton extends StatelessWidget {
  final Color foregroundColor;
  final Color primaryColor;
  final int   onpressed;
  final double eButtonWidth;
  final double eButtonHeight;
  final String text;
   eButton({
    required this.foregroundColor,
    required this.primaryColor,
    required this.onpressed,
    required this.text,
    required this.eButtonHeight,
    required this.eButtonWidth
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: (){
      if(onpressed ==1){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));}
      if(onpressed==0){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));}
      if(onpressed==2){Login(context);}
      if(onpressed==3){Signup(context);}
    }, 
    child:Onboard_.smallText(text, 16,FontWeight.w500),
    style: ElevatedButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: primaryColor,
      minimumSize:Size(eButtonWidth,eButtonHeight),
      ),
    );
  }
  
  void Login(BuildContext context) {
    bool auth = true;

    if(auth==true){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
  }
  
  void Signup(BuildContext context) {
        bool auth = true;
        if(auth==true){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        }

  }
}