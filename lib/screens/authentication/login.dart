import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(Constants.login1),
              fit: BoxFit.fill
              )

            ),
          ),
          Container(
            height: Constants.height(context)*0.2,
            width: Constants.width(context),
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Onboard_.boldText("Do fugiat tempor ex "),
                  Onboard_.smallText("Park at Your Convinence",20)
                  
            
                ],
              ),
            ),
          ),
          Container(
            height: Constants.height(context)*0.2,
            width: Constants.width(context),
            color: Colors.green,
          ),

      ]),
    );
  }
}