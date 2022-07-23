import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingSecondPage extends StatefulWidget {
  const RatingSecondPage({Key? key}) : super(key: key);

  @override
  State<RatingSecondPage> createState() => _RatingSecondPageState();
}

class _RatingSecondPageState extends State<RatingSecondPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget ratingHeader() {
      return Column(
        children: [
          Container(
            width: 295,
            height: 210,
            margin: EdgeInsets.only(
              bottom: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_rating_2.png',
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Enjoy Your Meal',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff121622),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Please rate our experience',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff808EAB),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget ratingBody() {
      Widget selectRating() {
        Widget star(int index, Color backgroundColor) {
          if (selectedIndex == 0) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = -1;
                });
              },
              child: Image.asset(
                'assets/icon_star.png',
                width: 50,
                height: 50,
                color: backgroundColor,
              ),
            );
          } else {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Image.asset(
                'assets/icon_star.png',
                width: 50,
                height: 50,
                color: backgroundColor,
              ),
            );
          }
        }

        if (selectedIndex == 0) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              star(
                0,
                Color(0xffFFC648),
              ),
              star(
                1,
                Color(0xffF8F8F8),
              ),
              star(
                2,
                Color(0xffF8F8F8),
              ),
              star(
                3,
                Color(0xffF8F8F8),
              ),
              star(
                4,
                Color(0xffF8F8F8),
              ),
            ],
          );
        } else if (selectedIndex == 1) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              star(
                0,
                Color(0xffFFC648),
              ),
              star(
                1,
                Color(0xffFFC648),
              ),
              star(
                2,
                Color(0xffF8F8F8),
              ),
              star(
                3,
                Color(0xffF8F8F8),
              ),
              star(
                4,
                Color(0xffF8F8F8),
              ),
            ],
          );
        } else if (selectedIndex == 2) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              star(
                0,
                Color(0xffFFC648),
              ),
              star(
                1,
                Color(0xffFFC648),
              ),
              star(
                2,
                Color(0xffFFC648),
              ),
              star(
                3,
                Color(0xffF8F8F8),
              ),
              star(
                4,
                Color(0xffF8F8F8),
              ),
            ],
          );
        } else if (selectedIndex == 3) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              star(
                0,
                Color(0xffFFC648),
              ),
              star(
                1,
                Color(0xffFFC648),
              ),
              star(
                2,
                Color(0xffFFC648),
              ),
              star(
                3,
                Color(0xffFFC648),
              ),
              star(
                4,
                Color(0xffF8F8F8),
              ),
            ],
          );
        } else if (selectedIndex == 4) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              star(
                0,
                Color(0xffFFC648),
              ),
              star(
                1,
                Color(0xffFFC648),
              ),
              star(
                2,
                Color(0xffFFC648),
              ),
              star(
                3,
                Color(0xffFFC648),
              ),
              star(
                4,
                Color(0xffFFC648),
              ),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              star(
                0,
                Color(0xffF8F8F8),
              ),
              star(
                1,
                Color(0xffF8F8F8),
              ),
              star(
                2,
                Color(0xffF8F8F8),
              ),
              star(
                3,
                Color(0xffF8F8F8),
              ),
              star(
                4,
                Color(0xffF8F8F8),
              ),
            ],
          );
        }
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        margin: EdgeInsets.only(
          bottom: 24,
        ),
        child: selectRating(),
      );
    }

    Widget ratingMessage() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 28,
        ),
        margin: EdgeInsets.only(
          bottom: 24,
        ),
        child: TextFormField(
          cursorColor: Color(0xff262A34),
          obscureText: false,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff262A34),
          ),
          maxLines: 5,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF8F8F8),
            hintText: 'Your Message',
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff808EAB),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      );
    }

    Widget ratingButton() {
      return Container(
        width: double.infinity,
        height: 55,
        padding: EdgeInsets.symmetric(
          horizontal: 28,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/first-pricing',
              (route) => false,
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff4074E6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Text(
            'Submit Review',
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ratingHeader(),
            SizedBox(
              height: 40,
            ),
            ratingBody(),
            ratingMessage(),
            ratingButton(),
          ],
        ),
      ),
    );
  }
}
