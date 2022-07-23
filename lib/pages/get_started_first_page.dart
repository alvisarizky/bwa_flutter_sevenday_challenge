import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedFirstPage extends StatelessWidget {
  const GetStartedFirstPage({Key? key}) : super(key: key);

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
                  'assets/image_getstartedfirst.png',
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 37,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Maximize Revenue',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Gain more profit from cryptocurrency without any risk involved',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/second-get-started',
                      (route) => false,
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.only(
                      bottom: 55,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff877BFB),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icon_button_getstartedfirst.png',
                        width: 34,
                        height: 34,
                      ),
                    ),
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
