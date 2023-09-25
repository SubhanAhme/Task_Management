import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/page1.dart';

import '../constant.dart';

class Initializer extends StatefulWidget {
  const Initializer({super.key});

  @override
  State<Initializer> createState() => _InitializerState();
}

class _InitializerState extends State<Initializer> {
  int _currentPage = 0;
  final Color customSelectedColor = Color(0xFF5451D6);
  final Color customNonSelectedColor = Color(0x665451D6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom:
                MediaQuery.of(context).size.height * 0.45, // 55% of the screen
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Layer2.png'),
                      ),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.50, // Overlaps the first container by 5%
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xFFF8F6FF)),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          child: Container(
                            width: _currentPage == index ? 25.0 : 6.0,
                            height: 6.0,
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              borderRadius: _currentPage == index
                                  ? BorderRadius.circular(12.0)
                                  : BorderRadius.circular(5.0),
                              color: _currentPage == index
                                  ? customSelectedColor // Use custom selected color
                                  : customNonSelectedColor, // Use custom non-selected color
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Taskcy',
                      style: GoogleFonts.pollerOne(
                        textStyle: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF756EF3),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Building Better\nWorkplaces',
                      style: TextStyle(
                          fontSize: 37,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF2F394B)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create a unique emotional story that\ndescribes better than words',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8D8D8D)),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GradientButton(
                     onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                            builder: (context) => Page1(),
                                    ),
                                  );
                                },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      gradientColors: [Color(0xFF8B78FF), Color(0xFF5451D6)],
                      width: MediaQuery.of(context).size.width *
                          0.85, // Set the width
                      height: 60.0, // Set the height
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}