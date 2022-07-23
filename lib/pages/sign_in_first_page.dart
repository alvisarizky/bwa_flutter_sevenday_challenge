import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInFirstPage extends StatelessWidget {
  const SignInFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logoApp() {
      return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xffFCAC15),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            'assets/icon_logo_signin_1.png',
            width: 32,
            height: 32,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return TextFormField(
          cursorColor: Color(0xffFFFFFF),
          obscureText: false,
          style: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xffFFFFFF),
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff262A34),
            hintText: 'Email Address',
            hintStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff6F7075),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide.none,
            ),
          ),
        );
      }

      Widget passwordInputSection() {
        Widget passwordInput() {
          return TextFormField(
            cursorColor: Color(0xffFFFFFF),
            obscureText: true,
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xffFFFFFF),
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff262A34),
              hintText: 'Password',
              hintStyle: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff6F7075),
              ),
              suffixIcon: Padding(
                padding: EdgeInsetsDirectional.only(
                  end: 15,
                ),
                child: Icon(
                  Icons.visibility_outlined,
                  color: Color(0xff6F7075),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide.none,
              ),
            ),
          );
        }

        Widget forgotPassword() {
          return Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Text(
                'Forgot My Password',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6A6B70),
                ),
              )
            ],
          );
        }

        return Column(
          children: [
            passwordInput(),
            SizedBox(
              height: 6,
            ),
            forgotPassword(),
          ],
        );
      }

      return Column(
        children: [
          emailInput(),
          SizedBox(
            height: 20,
          ),
          passwordInputSection(),
        ],
      );
    }

    Widget buttonGroup() {
      Widget signInButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/second-sign-in',
                (route) => false,
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Color(0xffFCAC15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
            ),
            child: Text(
              'Sign In',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff6B4909),
              ),
            ),
          ),
        );
      }

      Widget createAccount() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have account? ',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffFFFFFF),
              ),
            ),
            Text(
              'Sign Up',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        );
      }

      return Column(
        children: [
          signInButton(),
          SizedBox(
            height: 16,
          ),
          createAccount(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            logoApp(),
            Text(
              'Welcome back.\nLet’s make money.',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF),
              ),
            ),
            inputSection(),
            SizedBox(
              height: 50,
            ),
            buttonGroup(),
          ],
        ),
      ),
    );
  }
}
