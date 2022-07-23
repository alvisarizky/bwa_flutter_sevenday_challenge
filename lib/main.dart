import 'package:bwa_flutter_seven_days_challenge/pages/empty_state_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/empty_state_second_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/get_started_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/get_started_second_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/pricing_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/pricing_second_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/random_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/random_second_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/rating_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/rating_second_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/sign_in_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/sign_in_second_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/splash_first_page.dart';
import 'package:bwa_flutter_seven_days_challenge/pages/splash_second_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashFirstPage(),
        '/first': (context) => SplashSecondPage(),
        '/first-get-started': (context) => GetStartedFirstPage(),
        '/second-get-started': (context) => GetStartedSecondPage(),
        '/first-sign-in': (context) => SignInFirstPage(),
        '/second-sign-in': (context) => SignInSecondPage(),
        '/first-empty-state': (context) => EmptyStateFirstPage(),
        '/second-empty-state': (context) => EmptyStateSecondPage(),
        '/first-rating': (context) => RatingFirstPage(),
        '/second-rating': (context) => RatingSecondPage(),
        '/first-pricing':(context) => PricingFirstPage(),
        '/second-pricing':(context) => PricingSecondPage(),
        '/first-random-page':(context) => RandomFirstPage(),
        '/second-random-page':(context) => RandomSecondPage(),
      },
    );
  }
}
