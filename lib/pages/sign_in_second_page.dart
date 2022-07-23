import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInSecondPage extends StatelessWidget {
  const SignInSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerIllustration() {
      return Container(
        width: 245,
        height: 279,
        margin: EdgeInsets.only(
          top: 16,
          bottom: 48,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_signin_2.png',
            ),
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff17171A),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: Color(0xff17171A),
              obscureText: false,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff17171A),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                hintText: 'Email Address',
                hintStyle: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6F7075),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(71),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        );
      }

      Widget passwordInput() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff17171A),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              cursorColor: Color(0xff17171A),
              obscureText: true,
              obscuringCharacter: '*',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff17171A),
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                hintText: 'Password',
                hintStyle: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6F7075),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(71),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        );
      }

      return Column(
        children: [
          emailInput(),
          SizedBox(
            height: 16,
          ),
          passwordInput(),
        ],
      );
    }

    Widget buttonGroup() {
      Widget signInButton() {
        return Container(
          width: double.infinity,
          height: 55,
          margin: EdgeInsets.only(
            top: 40,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/first-empty-state',
                (route) => false,
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff5468FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            child: Text(
              'Log In',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffF8F8F8),
              ),
            ),
          ),
        );
      }

      Widget signUpButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(
                  color: Color(0xffCFCFCF),
                ),
              ),
            ),
            child: Text(
              'Create New Account',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffCFCFCF),
              ),
            ),
          ),
        );
      }

      return Column(
        children: [
          signInButton(),
          SizedBox(
            height: 16,
          ),
          signUpButton(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: ListView(
          children: [
            headerIllustration(),
            inputSection(),
            buttonGroup(),
          ],
        ),
      ),
    );
  }
}
