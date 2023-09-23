import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  var hintText;
  
  var controller;

  MyTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: Color(0xFF756EF3),
        controller: controller,
        decoration: InputDecoration(
         hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF868D95),
              height: 1.3,
            ),
            decorationColor: Color(0xFF756EF3),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 202, 209, 221))),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Color(0xFF756EF3),
            ),
          ),
        ),
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF002055),
            height: 1.3,
          ),
          decorationColor: Color(0xFF756EF3),
        ));
  }
}
