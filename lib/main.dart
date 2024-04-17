// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:megaproject/pages/cart_page.dart';

import 'package:megaproject/pages/home_page.dart';
import 'package:megaproject/pages/login_page.dart';
import 'package:megaproject/utils/routes.dart';
import 'package:megaproject/widgets/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),


      darkTheme: MyTheme.darkTheme(context),
      // theme: ThemeData(
      //   // Set deepPurple as the primary color for the app
      //   primarySwatch: Colors.deepPurple,
      //   // Apply GoogleFonts.lato across the app
      //   fontFamily: GoogleFonts.lato().fontFamily,
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),

      },
    );
  }
}
