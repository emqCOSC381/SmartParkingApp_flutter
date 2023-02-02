import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking/screens/authentication/signupPage.dart';
import 'package:parking/utils/constants.dart';
import 'package:parking/widgets/authWelcome.dart';
import 'package:parking/widgets/login.dart';
import 'package:parking/widgets/onboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              authTitle(text: "Log Into Your \nAccount"),
              Container(
                height: Constants.height(context) * 0.195,
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
                      hintText: "Password",
                      obscure_: true,
                      controller: passwordController,
                      leadingIcon: Icons.password,
                    ),
                  ],
                ),
              ),
              Container(
                height: Constants.height(context) * 0.08,
                width: Constants.width(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        autofocus: true,
                        value: false,
                        onChanged: (value) {
                          print(value);
                        }),
                    Onboard_.smallText("Remember me", 16, FontWeight.w400)
                  ],
                ),
              ),
              Container(
                height: Constants.height(context) * 0.08,
                width: Constants.width(context),
                child: eButton(
                  foregroundColor: Constants.whiteColor,
                  primaryColor: Constants.primaryColor,
                  onpressed: 2,
                  text: "Login",
                  eButtonHeight: 40,
                  eButtonWidth: 50,

                ),
              ),
              Container(
                height: Constants.height(context) * 0.2,
                width: Constants.width(context),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Onboard_.smallText("Forgot Password ", 16, FontWeight.w400),
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
                    height: 10,
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
                height: 60,
                width: Constants.width(context),
                // color: Colors.red,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                    },
                    child: richText_(string1:"Dont Have An Account? ",string2: "Signup",)
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


