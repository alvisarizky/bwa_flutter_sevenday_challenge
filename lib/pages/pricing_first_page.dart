import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingFirstPage extends StatefulWidget {
  const PricingFirstPage({Key? key}) : super(key: key);

  @override
  State<PricingFirstPage> createState() => _PricingFirstPageState();
}

class _PricingFirstPageState extends State<PricingFirstPage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget pricingLogoApp() {
      return Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.only(
          bottom: 32,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffFBD7FF),
        ),
        child: Center(
          child: Image.asset(
            'assets/icon_logo_pricing_1.png',
            width: 42,
            height: 42,
          ),
        ),
      );
    }

    Widget pricingTextHeader() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 80,
        ),
        margin: EdgeInsets.only(
          bottom: 40,
        ),
        child: Text(
          'Which one you wish to Upgrade?',
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xff191919),
          ),
        ),
      );
    }

    Widget pricingPackage() {
      Widget package(
        int index,
        String imageUrl,
        String titlePackage,
        String detailPackagelight,
        String detailPackageMedium,
      ) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: EdgeInsets.only(
              bottom: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(39),
              border: Border.all(
                color: selectedIndex == index
                    ? Color(0xff6050E7)
                    : Color(0xffD9DEEA),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imageUrl,
                  // 'assets/image_illustration_1.png',
                  width: 66,
                  height: 61,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titlePackage,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff191919),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            detailPackagelight,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xffA3A8B8),
                            ),
                          ),
                          Text(
                            detailPackageMedium,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5343C2),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                selectedIndex == index
                    ? Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: Color(0xff6050E7),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.check_rounded,
                            size: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        );
      }

      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            package(
              0,
              'assets/image_illustration_1.png',
              'Money Security',
              'support ',
              '24/7',
            ),
            package(
              1,
              'assets/image_illustration_2.png',
              'Automation',
              'we provide ',
              'Invoice',
            ),
            package(
              2,
              'assets/image_illustration_3.png',
              'Balance Report',
              'can up to ',
              '10k',
            ),
          ],
        ),
      );
    }

    Widget pricingUpgradeButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/second-pricing',
            (route) => false,
          );
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 24,
          ),
          margin: EdgeInsets.only(
            top: 40,
          ),
          decoration: BoxDecoration(
            color: Color(0xff6050E7),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Upgrade Now',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              Image.asset(
                'assets/icon_upgrade_pricing_1.png',
                width: 24,
                height: 24,
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            pricingLogoApp(),
            pricingTextHeader(),
            pricingPackage(),
            pricingUpgradeButton(),
          ],
        ),
      ),
    );
  }
}
