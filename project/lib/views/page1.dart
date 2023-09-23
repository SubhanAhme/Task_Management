// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// import 'Page2.dart';

// class Page1 extends StatelessWidget {
//   const Page1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//        children: [
//         Container(
//           // height: MediaQuery.of(context).size.height * 0.5,
//           // width: MediaQuery.of(context).size.height * 1,
//           child: Image(image: AssetImage("assets/images/intro1.png")),
//         ),
//         SizedBox(
//           height: 30,
//         ),
//         Positioned(
//           // left: 20,
//           // right: 20,
//           child: Container(
//             // height: MediaQuery.of(context).size.height * 0.4,
//             // width: MediaQuery.of(context).size.height * 1,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Task Management ",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: 'ProductSans',
//                       fontWeight: FontWeight.w700,
//                       color: Color(0xFF5451D6)),
//                 ),
//                 Text(
//                   "Let's Create a",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: 'ProductSans',
//                       fontWeight: FontWeight.w700,
//                       color: Color(0x665451D6)),
//                 ),
//                 Text(
//                   "Space For Your",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: 'ProductSans',
//                       fontWeight: FontWeight.w700,
//                       color: Color(0xFF5451D6)),
//                 ),
//                 Text(
//                   "WorkForce",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: 'ProductSans',
//                       fontWeight: FontWeight.w700,
//                       color: Color(0x665451D6)),
//                 ),
                
               
//               ],
//             ),
//           ),
//         )
//       ]),
//       floatingActionButton:  Container(
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                     builder: (context) => Page2(),
//                                   ),
//                                 );
//                               },
//                               child: Image.asset("assets/images/button.png"),
//                             ),
//                           ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/page2.dart';



class Page1 extends StatelessWidget {
  const Page1({super.key});

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
              child: Image(image: AssetImage("assets/images/intro1.png")),
            ),
            SizedBox(height: 5,),
            Stack(
              
              children: [
                Padding(
                  padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width * 0.1,),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.45,
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
                    "Let's create a",
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
                        "space",
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
                        " for your",
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
                    "workflows.",
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
                                            builder: (context) => Page2(),
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