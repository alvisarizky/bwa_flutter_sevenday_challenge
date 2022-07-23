import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class RandomFirstPage extends StatefulWidget {
  const RandomFirstPage({Key? key}) : super(key: key);

  @override
  State<RandomFirstPage> createState() => _RandomFirstPageState();
}

class _RandomFirstPageState extends State<RandomFirstPage> {
  int selectedIndex = -1;
  int firstItemQuantity = 2;
  int secondItemQuantity = 5;
  @override
  Widget build(BuildContext context) {
    Widget transactionCard(
      int index,
      String imageUrl,
      String foodName,
      String restorantName,
      String itemQuantity,
      String priceOfFood,
    ) {
      Widget operatorButton(
        String operator,
        Function() onTap,
        EdgeInsets margin,
        Color backgroundColor,
      ) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: 22,
            height: 22,
            margin: margin,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                operator,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        );
      }

      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: double.infinity,
          height: 140,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(
            bottom: 26,
          ),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.only(
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          imageUrl,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff191919),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          restorantName,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xffA3A8B8),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        operatorButton(
                          '-',
                          () {
                            setState(() {
                              if (selectedIndex == 1) {
                                if (secondItemQuantity == 0) {
                                  secondItemQuantity = 0;
                                } else {
                                  secondItemQuantity--;
                                }
                              } else {
                                if (firstItemQuantity == 0) {
                                  firstItemQuantity = 0;
                                } else {
                                  firstItemQuantity--;
                                }
                              }
                            });
                          },
                          EdgeInsets.only(
                            right: 8,
                          ),
                          Color(0xffD9D9D9),
                        ),
                        Text(
                          itemQuantity,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff191919),
                          ),
                        ),
                        operatorButton(
                          '+',
                          () {
                            setState(() {
                              if (selectedIndex == 1) {
                                secondItemQuantity++;
                              } else {
                                firstItemQuantity++;
                              }
                            });
                          },
                          EdgeInsets.only(
                            left: 8,
                          ),
                          Color(0xff111111),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    child: Text(
                      priceOfFood,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff191919),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    double priceFirstItem = firstItemQuantity.toDouble() * 45.00;
    double priceSecondItem = secondItemQuantity.toDouble() * 102.00;

    Widget detailOrder() {
      Widget subDetailOrder(
        String subTitleDetail,
        String price,
        TextStyle textStyle,
      ) {
        return SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subTitleDetail,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff191919),
                ),
              ),
              Container(
                width: 200,
                child: Text(
                  price,
                  style: textStyle,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        );
      }

      double subTotal = priceFirstItem + priceSecondItem;
      double deliveryPrice = 0;
      if (firstItemQuantity == 0 && secondItemQuantity == 0) {
        deliveryPrice = deliveryPrice;
      } else {
        deliveryPrice = 80;
      }
      double totalPrice = subTotal + deliveryPrice;

      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(
          bottom: 60,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff191919),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            subDetailOrder(
              'Sub total',
              NumberFormat.currency(
                locale: 'en_US',
                symbol: '\$',
              ).format(subTotal),
              GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff191919),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            subDetailOrder(
              'Delivery',
              NumberFormat.currency(
                locale: 'en_US',
                symbol: '\$',
              ).format(deliveryPrice),
              GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff191919),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            subDetailOrder(
              'Total',
              NumberFormat.currency(
                locale: 'en_US',
                symbol: '\$',
              ).format(totalPrice),
              GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff191919),
              ),
            ),
          ],
        ),
      );
    }

    Widget customButton(
      String titleButton,
      Color textColor,
      Color backgroundColor,
    ) {
      return Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/second-random-page',
              (route) => false,
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(53),
            ),
          ),
          child: Text(
            titleButton,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 36,
                bottom: 30,
              ),
              child: Text(
                'My Shopping Cart',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff191919),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            transactionCard(
              0,
              'assets/image_random_item_1.png',
              'Burger Malleta',
              'McTheone',
              '$firstItemQuantity',
              NumberFormat.currency(
                locale: 'en_US',
                symbol: '\$',
              ).format(priceFirstItem),
            ),
            transactionCard(
              1,
              'assets/image_random_item_2.png',
              'Mojito Orange',
              'The Bar',
              '$secondItemQuantity',
              NumberFormat.currency(
                locale: 'en_US',
                symbol: '\$',
              ).format(priceSecondItem),
            ),
            detailOrder(),
            customButton(
              'Checkout Now',
              Color(0xff2E221B),
              Color(0xffFFC532),
            ),
            customButton(
              'Save to Wishlist',
              Color(0xffFFFFFF),
              Color(0xffD9D9D9),
            ),
          ],
        ),
      ),
    );
  }
}
