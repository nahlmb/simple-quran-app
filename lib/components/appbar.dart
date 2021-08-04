import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

getSimpleQAppBar() {
  return AppBar(
    elevation: 0,
    textTheme: GoogleFonts.libreBaskervilleTextTheme(),
    title: Text("Al Quran",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    flexibleSpace: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade200)))),
  );
}
