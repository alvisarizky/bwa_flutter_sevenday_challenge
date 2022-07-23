import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateSecondPage extends StatelessWidget {
  const EmptyStateSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1B33),
      body: Column(
        children: [
          Image.asset(
            'assets/image_empty_2.png',
            width: double.infinity,
            height: 454,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Text(
                'Boost Profit!',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 16,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 64,
                ),
                child: Text(
                  'Our tools are helping business to grow much faster',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color(0xffFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/first-rating',
                (route) => false,
              );
            },
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: Color(0xff808EE0),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  'assets/icon_button_empty_2.png',
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
