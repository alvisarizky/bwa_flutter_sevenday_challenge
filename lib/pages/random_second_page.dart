import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class RandomSecondPage extends StatefulWidget {
  const RandomSecondPage({Key? key}) : super(key: key);

  @override
  State<RandomSecondPage> createState() => _RandomSecondPageState();
}

class _RandomSecondPageState extends State<RandomSecondPage> {
  int selectedIndex = -1;
  double price = 22800;

  @override
  Widget build(BuildContext context) {
    Widget customTitleDestination() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
          bottom: 26,
        ),
        child: Column(
          children: [
            Text(
              'Arrina La',
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Bali, Dekat Bandung',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff2F323A),
              ),
            ),
          ],
        ),
      );
    }

    Widget customDescriptionDestination() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        margin: EdgeInsets.only(
          bottom: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff2F323A),
              ),
            ),
          ],
        ),
      );
    }

    Widget customBookingDate() {
      Widget customDateCard(
        bool isAvailable,
        int index,
        String day,
        String date,
      ) {
        if (isAvailable == false) {
          return Container(
            width: 80,
            height: 100,
            margin: EdgeInsets.only(
              right: 20,
            ),
            decoration: BoxDecoration(
              color: Color(0xffF4F4F6),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        day,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffBABAC8),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        date,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffBABAC8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return GestureDetector(
            onTap: () {
              if (selectedIndex == index) {
                setState(() {
                  selectedIndex = -1;
                });
              } else {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: Container(
              width: 80,
              height: 100,
              margin: EdgeInsets.only(
                right: 20,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          day,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          date,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffA8ACB6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  selectedIndex == index
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 27,
                            height: 25,
                            padding: EdgeInsets.only(
                              right: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff3F6DF6),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(22),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.check_rounded,
                              color: Color(0xffFFFFFF),
                              size: 16,
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          );
        }
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 24,
        ),
        margin: EdgeInsets.only(
          bottom: 45,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Booking Now',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customDateCard(
                    true,
                    0,
                    'SUN',
                    '24 JUL',
                  ),
                  customDateCard(
                    false,
                    1,
                    'MON',
                    '25 JUL',
                  ),
                  customDateCard(
                    true,
                    2,
                    'TUE',
                    '26 JUL',
                  ),
                  customDateCard(
                    false,
                    3,
                    'WED',
                    '27 JUL',
                  ),
                  customDateCard(
                    true,
                    4,
                    'THU',
                    '28 JUL',
                  ),
                  customDateCard(
                    true,
                    5,
                    'FRI',
                    '29 JUL',
                  ),
                  customDateCard(
                    true,
                    6,
                    'SAT',
                    '30 JUL',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomPage() {
      Widget customButton() {
        return Container(
          width: 220,
          height: 60,
          margin: EdgeInsets.only(
            left: 16,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/',
                (route) => false,
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff3F6DF6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
            child: Text(
              'Continue',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffFAFAFA),
              ),
            ),
          ),
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        margin: EdgeInsets.only(
          bottom: 40,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NumberFormat.currency(
                      locale: 'en_US',
                      symbol: '\$',
                      decimalDigits: 0,
                    ).format(price),
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3F6DF6),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '/night',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff2F323A),
                    ),
                  ),
                ],
              ),
            ),
            customButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFBFF),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(180),
                bottomRight: Radius.circular(180),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/image_random_destination.png',
                ),
              ),
            ),
          ),
          customTitleDestination(),
          customDescriptionDestination(),
          customBookingDate(),
          bottomPage(),
        ],
      ),
    );
  }
}
