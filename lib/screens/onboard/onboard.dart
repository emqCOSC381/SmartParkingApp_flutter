import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parking/utils/constants.dart';
import 'package:parking/widgets/onboard.dart';

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
          // image,boldt1,boldt2,smallt1,smallt2, smallt3, pageColor
          Onboard_(
            image:Constants.onboard1,
            boldt1:"Find Parking Spaces",
            boldt2:"Around You Easily!",
            smallt1:"Do fugiat tempor ex amet labore aliqua exercitation",
            smallt2:"officia qui eu elit commodo elit magna.",
            smallt3: "Sit dolor ",
            dotColor1: Constants.primaryColor,
            dotColor2: Constants.primaryFaded,
            dotColor3: Constants.primaryFaded,
            ),
          Onboard_(
            image:Constants.onboard2,
            boldt1:"Book and Pay Parking",
            boldt2:"Quickly & Safely",
            smallt1:"Do fugiat tempor ex amet labore aliqua exercitation",
            smallt2:"officia qui eu elit commodo elit magna.",
            smallt3: "Sit dolor ",
            dotColor1: Constants.primaryFaded,
            dotColor2: Constants.primaryColor,
            dotColor3: Constants.primaryFaded,
            ),
          Onboard_(
            image:Constants.onboard3,
            boldt1:"Extend Parking Time",
            boldt2:"As You Need",
            smallt1:"Do fugiat tempor ex amet labore aliqua exercitation",
            smallt2:"officia qui eu elit commodo elit magna.",
            smallt3: "Sit dolor ",
            dotColor1: Constants.primaryFaded,
            dotColor2: Constants.primaryFaded,
            dotColor3: Constants.primaryColor,
            ),
        ],
      ),
    );
  }
}
