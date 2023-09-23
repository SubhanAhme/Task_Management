import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFFFFFFF),
       appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleSpacing: 0,
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0.0,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  //  Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //           builder: (context) => LoginView(),
                  //   ),
                  // );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/Ellipse.png"),
                    ), // Back image
                    Image(
                      image: AssetImage("assets/images/Category.png"),
                    ),
                  ],
                ),
              ),
              Text(
                "Chat",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF002055),
                    height: 2,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //  Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //           builder: (context) => LoginView(),
                  //   ),
                  // );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/Ellipse.png"),
                    ), // Back image
                    Image(
                      image: AssetImage("assets/images/Notification.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}