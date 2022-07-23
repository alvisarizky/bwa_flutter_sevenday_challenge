import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateFirstPage extends StatelessWidget {
  const EmptyStateFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 66,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_empty_1.png',
              width: 240,
              height: 210,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Success Order',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff0E1954),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'We will delivery your package as soon as possible',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff0E1954),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 55,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/second-empty-state',
                    (route) => false,
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffF94593),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Text(
                  'Done',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffF8F8F8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
