import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashSecondPage extends StatefulWidget {
  const SplashSecondPage({Key? key}) : super(key: key);

  @override
  State<SplashSecondPage> createState() => _SplashSecondPageState();
}

class _SplashSecondPageState extends State<SplashSecondPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/first-get-started',
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff13131E),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_secondsplashscreen.png',
              width: 140,
              height: 140,
            ),
            Text(
              'VENTURE',
              style: GoogleFonts.dmSerifDisplay(
                color: Color(0xffFFFFFF),
                fontSize: 32,
                fontWeight: FontWeight.w400,
                letterSpacing: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
