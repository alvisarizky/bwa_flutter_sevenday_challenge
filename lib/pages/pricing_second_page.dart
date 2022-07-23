import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingSecondPage extends StatelessWidget {
  const PricingSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroudGradient() {
      return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0B073E),
              Color(0xff602880),
            ],
          ),
        ),
      );
    }

    Widget pricingContent() {
      Widget pricingHeader() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                width: 164,
                height: 164,
                margin: EdgeInsets.only(
                  bottom: 24,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_pricing_2.png',
                    ),
                  ),
                ),
              ),
              Text(
                'Pro Features',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 80,
                ),
                child: Text(
                  'Unlock the winner modules and get more insights',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7F7FAD),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      }

      Widget featurePackage() {
        Widget features(String featureTitle) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              bottom: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 26,
                  height: 26,
                  margin: EdgeInsets.only(
                    right: 12,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFE6C4D),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Color(0xffFFFFFF),
                      size: 21,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    featureTitle,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          );
        }

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 28,
          ),
          child: Column(
            children: [
              features(
                'Unlock Our Top Charts',
              ),
              features(
                'Save More than 1,000 Docs',
              ),
              features(
                '24/7 Customer Support',
              ),
              features(
                'Track Company’s Spending',
              ),
            ],
          ),
        );
      }

      Widget subscribeButtonAndCS() {
        Widget subscribeButton() {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/first-random-page',
                (route) => false,
              );
            },
            child: Container(
              width: double.infinity,
              height: 55,
              margin: EdgeInsets.symmetric(
                horizontal: 28,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              decoration: BoxDecoration(
                color: Color(0xffE57C73),
                borderRadius: BorderRadius.circular(31),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE57C73).withOpacity(0.8),
                    blurRadius: 30,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 41,
                    margin: EdgeInsets.only(
                      right: 16,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Subscribe Now',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 41,
                    height: 41,
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFAACA5),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: 24,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        Widget contactSupport() {
          return Container(
            margin: EdgeInsets.only(
              top: 32,
            ),
            child: Text(
              'Contact Support',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffFFFFFF),
                decoration: TextDecoration.underline,
              ),
            ),
          );
        }

        return Container(
          margin: EdgeInsets.only(
            top: 48,
          ),
          child: Column(
            children: [
              subscribeButton(),
              contactSupport(),
            ],
          ),
        );
      }

      return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pricingHeader(),
            featurePackage(),
            subscribeButtonAndCS(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Stack(
        children: [
          backgroudGradient(),
          pricingContent(),
        ],
      ),
    );
  }
}
