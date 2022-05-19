import 'dart:async';

import 'package:finalpracticalflutter/myHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const MyHomePage(),
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo(160, 160),
            const SizedBox(
              height: 25,
            ),
            richText(30),
          ],
        ),
      ),
    );
  }

  // Widget logo(double height_, double width_) {
  //   return SvgPicture.asset(
  //     'assets/logo.svg',
  //     height: height_,
  //     width: width_,
  //   );
  // }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: const Color(0xFF21899C),
          letterSpacing: 3,
          height: 1.03,
        ),
        children: const [
          TextSpan(
            text: 'Notice Board App \n Final Practical',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: '\n\n\n -Neeraj Singh Jadon \n(20MCA1073) ',
            style: TextStyle(
              color: Color(0xFF0A0A0A),
              fontWeight: FontWeight.w800,
            ),
          ),

        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
