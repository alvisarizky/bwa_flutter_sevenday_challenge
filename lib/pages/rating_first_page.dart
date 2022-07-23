import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingFirstPage extends StatefulWidget {
  const RatingFirstPage({Key? key}) : super(key: key);

  @override
  State<RatingFirstPage> createState() => _RatingFirstPageState();
}

class _RatingFirstPageState extends State<RatingFirstPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget headerRating() {
      return Column(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_rating_1.png',
                ),
              ),
            ),
          ),
          Text(
            'Pizza Ballado',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '\$90,00',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xffFFFFFF),
            ),
          ),
        ],
      );
    }

    Widget bodyRating() {
      Widget emojiRating(int index, String emoji) {
        if (selectedIndex == index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = -1;
              });
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Color(0xffEEF0FF)
                    : Color(0xff37394D),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  emoji,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          );
        } else {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Color(0xffEEF0FF)
                    : Color(0xff37394D),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  emoji,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          );
        }
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Was it delicious?',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                emojiRating(
                  0,
                  '😡',
                ),
                emojiRating(
                  1,
                  '😔',
                ),
                emojiRating(
                  2,
                  '😁',
                ),
                emojiRating(
                  3,
                  '😍',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buttonRating() {
      return Container(
        width: 211,
        height: 55,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/second-rating',
              (route) => false,
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff34D186),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Text(
            'Rate Now',
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
      backgroundColor: Color(0xff181925),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            headerRating(),
            bodyRating(),
            buttonRating(),
          ],
        ),
      ),
    );
  }
}
