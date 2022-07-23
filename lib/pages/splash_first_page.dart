import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashFirstPage extends StatefulWidget {
  const SplashFirstPage({Key? key}) : super(key: key);

  @override
  State<SplashFirstPage> createState() => _SplashFirstPageState();
}

class _SplashFirstPageState extends State<SplashFirstPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/first',
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_firstsplashscreen.png',
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon_firstsplashscreen.png',
                  width: 51,
                  height: 51,
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                    color: Color(0xff000000),
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
