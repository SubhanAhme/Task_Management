import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/HomePage.dart';
import 'package:project/views/bottomNavigator.dart';
import 'package:project/views/page1.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(bodyLarge: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        height: 1),
                  )
      ),
      home: const BottomNavigator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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