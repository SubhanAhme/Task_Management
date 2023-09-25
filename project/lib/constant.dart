import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';



class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final List<Color> gradientColors;
  final double width;
  final double height;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.gradientColors,
    this.width = 200.0, // Default width
    this.height = 60.0, // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(

        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          
         
        ),
        elevation: 4,
        primary: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.2),
        minimumSize: Size(width, height), // Set width and height
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.all(
                Radius.circular(20.0),),
          
        ),
        child: Container(
          width: width, // Set width
          height: height, // Set height
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
class MyTextField extends StatelessWidget {
  var hintText;
  
  var controller;
  
  var obsecureText;

  MyTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obsecureText=false,
    // Default height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText,
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
                  BorderSide(color: Color(0xFFE9F1FF))),
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

class AddButtonContainer extends StatefulWidget {
  final String icon;
  final String text;

  AddButtonContainer({required this.icon, required this.text});

  @override
  State<AddButtonContainer> createState() => _AddButtonContainerState();
}

class _AddButtonContainerState extends State<AddButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE9F1FF)),
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(widget.icon),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF002055),
                  height: 2,
                ),
              ),
            )
          ],
        ),
     ),
    );
}
}