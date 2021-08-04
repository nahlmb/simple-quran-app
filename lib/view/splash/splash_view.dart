import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_quran_app/routes/routes_name.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, RoutesName.home));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox.expand(
              child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "Al Quran",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      "Simple Quran App",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Simple Quran App version 0.5.5 (beta). Develop by nahlmb.dev. This app is develop using Flutter and several 3rd party library",
                      textAlign: TextAlign.center,
                      style:
                          GoogleFonts.lato(textStyle: TextStyle(fontSize: 12)),
                    )
                  ],
                ),
              ),
              bottom: 24,
            ),
          ],
        ),
      ))),
    );
  }
}
