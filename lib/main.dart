import 'package:flutter/material.dart';
import 'package:fullcontent/pages/home_page.dart';
import 'package:fullcontent/pages/login_page.dart';
import 'package:fullcontent/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        //primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      //initialRoute: "/home", //open this page
      routes: {  //all page but ititial page is "/"
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
