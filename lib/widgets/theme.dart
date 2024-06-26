import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
         cardColor: Colors.white,
        buttonTheme: ButtonThemeData(buttonColor: lightBluishColor),
        canvasColor: creamColor,
        secondaryHeaderColor: Colors.black,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),

        // textTheme: TextTheme(
        //   // Customize text styles here
        //   bodyText1: TextStyle(color: Colors.black),
        //   bodyText2: TextStyle(color: Colors.black),
        //   headline6: TextStyle(color: Colors.black),
        //   // Add more text styles as needed
        // ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.black,
        primaryColor: lightBluishColor,            /// alternative of button color
        
        // buttonTheme: ButtonThemeData(buttonColor: lightBluishColor),
        canvasColor: darkColor,
        secondaryHeaderColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white)),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
  static Color darkColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
