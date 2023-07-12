import 'package:flutter/material.dart';
import 'package:untitled_44/loginpage.dart';
import 'package:untitled_44/otpverification.dart';
import 'package:untitled_44/phonenumber.dart';
import 'package:untitled_44/signuppage.dart';
import 'package:untitled_44/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        accentColor: Color(0xFFFFFFFF)
      ),
        initialRoute: "/",
        routes:
        {
          "/": (context) => SplashScreen(),
          "/second": (context) => SignupPage(),
          "/thired": (context) => loginpage(),
          "/fourth": (context) => PhoneNumber(),
          "/fifth": (context) => OtpVerification(),
        },
      debugShowCheckedModeBanner: false,
    );
  }
}






