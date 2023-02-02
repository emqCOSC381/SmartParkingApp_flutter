import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking/utils/constants.dart';
import 'package:parking/widgets/onboard.dart';

class loginWidgets extends StatelessWidget {
  const loginWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class textField extends StatelessWidget {
  final String hintText;
  final bool obscure_;
  final TextEditingController controller;
  final IconData leadingIcon;


  const textField({
    required this.hintText,
    required this.obscure_,
    required this.controller,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      obscureText: obscure_,
      controller: controller,
      decoration: InputDecoration(

        prefixIcon: Icon(leadingIcon,),
        hintText: hintText,
        hintStyle: GoogleFonts.satisfy(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color:Constants.darkColor )

        )
      ),



    );
  }
}


////////////////////////////////////////[Title]///////////////////////////////////////////////////

class authTitle extends StatelessWidget {
  final String text;
  const authTitle({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.height(context) * 0.15,
      width: Constants.width(context),
      // color: Constants.primaryColor,
      child: Onboard_.boldText(text),
    );
  }
}
///////////////////////////////////////[Divide]////////////////////////////////////////////////////
class divider extends StatelessWidget {
  final double width;
  const divider({
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: width,
    child: Divider(
      height: 10,
      color: Constants.primaryFaded,

    ),
                    );
  }
}

// /////////////////////////////////////[Signin_Images]////////////////////////////////////////////////////
class signUpOtions extends StatelessWidget {
  final String icon;
  const signUpOtions({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 50,
      width: 50,
      image: AssetImage(icon)
      );
  }
}


// /////////////////////////////////[Rich text]///////////////////////////////////////////
class richText_ extends StatelessWidget {
  final String string1;
  final String string2;
  const richText_({
    required this.string1,
    required this.string2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: string1,
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              color: Constants.darkColor),
          children: [
            TextSpan(
                text: string2,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    color: Constants.primaryColor))
          ]),
    );
  }
}