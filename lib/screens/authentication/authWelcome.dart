import 'package:flutter/material.dart';
import 'package:parking/utils/constants.dart';
import 'package:parking/widgets/authWelcome.dart';
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
            image: DecorationImage(
              image: AssetImage(Constants.login1),
              fit: BoxFit.fill
              )
            ),
          ),
          Container(
            height: Constants.height(context)*0.2,
            width: Constants.width(context),
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
                          eButtonHeight: 40,
                          eButtonWidth: 150,
                        ),
                        SizedBox(width: 20,),
                        eButton(
                          text: "Sign up",
                          foregroundColor: Constants.whiteColor,
                          primaryColor: Constants.primaryColor,
                          onpressed:0,
                          eButtonHeight: 40,
                          eButtonWidth: 150,
                        ),
                      ],
                    ),
                  )
          ),

      ]),
    );
  }
}