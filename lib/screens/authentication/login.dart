import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:parking/utils/constants.dart';

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
            image: DecorationImage(image: AssetImage(Constants.login1))

            ),
          ),
          Container(
            height: Constants.height(context)*0.2,
            width: Constants.width(context),
            color: Colors.blue,
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