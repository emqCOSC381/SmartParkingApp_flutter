import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:parking/screens/authentication/loginPage.dart';
import 'package:parking/screens/authentication/signupPage.dart';
import 'package:parking/utils/constants.dart';
import 'package:parking/widgets/onboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Constants.height(context)*0.6,
            width: Constants.width(context),
            decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
              image: AssetImage(Constants.login1),
              fit: BoxFit.fill
              )

            ),
          ),
          Container(
            height: Constants.height(context)*0.2,
            width: Constants.width(context),
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Onboard_.boldText("Welcome to Parkir"),
                  Onboard_.smallText("Parking made easy",17,FontWeight.w400),
                ],
              ),
            ),
          ),
          Container(
            height: Constants.height(context)*0.2,
            width: Constants.width(context),
            // color: Colors.green,
            child:Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        eButton(
                          text: "Login",
                          foregroundColor: Constants.darkColor,
                          primaryColor: Constants.whiteColor,
                          onpressed:1,
                          // onPressed: (){},
                        ),
                        SizedBox(width: 20,),
                        eButton(
                          text: "Sign up",
                          foregroundColor: Constants.whiteColor,
                          primaryColor: Constants.primaryColor,
                          onpressed:0,
                          // onPressed: (){},
                          
                          
                        ),

                      ],
                    ),
                  )
          ),

      ]),
    );
  }
}

class eButton extends StatelessWidget {
  final Color foregroundColor;
  final Color primaryColor;
  final int   onpressed;
  final String text;
   eButton({
    required this.foregroundColor,
    required this.primaryColor,
    required this.onpressed,
    required this.text,
    
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: (){
      print(onpressed);
      if(onpressed ==1){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      }else{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
      }
    }, 
    child:Onboard_.smallText(text, 16,FontWeight.w500),
    style: ElevatedButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: primaryColor,
      minimumSize:Size(150,40),
      ),
    );
  }
}