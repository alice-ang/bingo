import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:bingo/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff5f2d9),
        textTheme: GoogleFonts.robotoMonoTextTheme(),
      ),
      // home: const GamesScreen(),
      home: const LoginScreen(),
    );
  }
}
