

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';


import 'loginview.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              // height: MediaQuery.of(context).size.height * 0.5,
              // width: MediaQuery.of(context).size.height * 1,
              child: Image(image: AssetImage("assets/images/intro3.png")),
            ),
            SizedBox(height: 15,),
            Stack(
              
              children: [
                Padding(
                  padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width * 0.1,),
                  child:  Container(
                    height: MediaQuery.of(context).size.height * 0.49,
                               width: MediaQuery.of(context).size.height * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Task Management',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF756EF3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10, // Use width to add horizontal spacing
                  ),
                  Text(
                    "Work more",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF002055),
                        height: 1.2,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Structured",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF756EF3),
                            height: 1.2,
                          ),
                        ),
                      ),
                      Text(
                        " and",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF002055),
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Organize.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF002055),
                        height: 1.2,
                      ),
                    ),
                  ),
                  ]))
                ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                            builder: (context) => LoginView(),
                                    ),
                                  );
                                },
                                child: Image.asset("assets/images/button.png"),
                              ),
                            ),
                        ),
              ],
            ),
        ],
      )
    );
      
  }
}