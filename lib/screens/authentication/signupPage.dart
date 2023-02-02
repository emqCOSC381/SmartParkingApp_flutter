import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:parking/screens/authentication/loginPage.dart';
import 'package:parking/utils/constants.dart';
import 'package:parking/widgets/authWelcome.dart';
import 'package:parking/widgets/login.dart';
import 'package:parking/widgets/onboard.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Constants.darkColor,
        ),
        elevation: 0,
        backgroundColor: Constants.whiteColor,
      ),
      backgroundColor: Constants.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20.0, right: 20),
          child: Column(
            children: [
              authTitle(text: "Create Your \nAccount"),
              Container(
                height: Constants.height(context) * 0.30,
                width: Constants.width(context),
                // color: Colors.blue,
                child: Column(
                  children: [
                    textField(
                      hintText: "Email",
                      obscure_: false,
                      controller: emailController,
                      leadingIcon: Icons.email,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    textField(
                      hintText: "Phone",
                      obscure_: false,
                      controller: emailController,
                      leadingIcon: Icons.wifi_calling,
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    textField(
                      hintText: "Password",
                      obscure_: true,
                      controller: passwordController,
                      leadingIcon: Icons.password,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: Constants.height(context) * 0.08,
                width: Constants.width(context),
                child: eButton(
                  foregroundColor: Constants.whiteColor,
                  primaryColor: Constants.primaryColor,
                  onpressed: 3,
                  text: "Sign-up",
                  eButtonHeight: 40,
                  eButtonWidth: 50,
                ),
              ),
              Container(
                height: Constants.height(context) * 0.15,
                width: Constants.width(context),
                // color: Colors.amber,

                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      divider(width: 172),
                      Onboard_.smallText("Or", 16, FontWeight.w400),
                      divider(width: 159),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      signUpOtions(icon: Constants.facebook),
                      SizedBox(width: 100),
                      signUpOtions(icon: Constants.google),
                      SizedBox(width: 100),
                      signUpOtions(icon: Constants.appple),
                    ],
                  )
                ]),
              ),
              Container(
                height: 80,
                width: Constants.width(context),
                // color: Colors.red,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: richText_(string1:"Dont Have An Account? ",string2: "Login",)
                    ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}