// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project/views/loginview.dart';

// import '../utils/DataConstant.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFFFFFFF),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   centerTitle: false,
      //   titleSpacing: 0,
      //   backgroundColor: Color(0xFFFFFFFF),
      //   elevation: 0.0,
      //   title: Container(
      //     padding: const EdgeInsets.symmetric(horizontal: 20),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         GestureDetector(
      //           onTap: () {
      //             //  Navigator.push(
      //             //   context,
      //             //   MaterialPageRoute(
      //             //           builder: (context) => LoginView(),
      //             //   ),
      //             // );
      //           },
      //           child: Stack(
      //             alignment: Alignment.center,
      //             children: [
      //               Image(
      //                 image: AssetImage("assets/images/Ellipse.png"),
      //               ), // Back image
      //               Image(
      //                 image: AssetImage("assets/images/Category.png"),
      //               ),
      //             ],
      //           ),
      //         ),
      //         Text(
      //           "Friday,26",
      //           style: GoogleFonts.poppins(
      //             textStyle: const TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.w600,
      //               color: Color(0xFF002055),
      //               height: 2,
      //             ),
      //           ),
      //         ),
      //         GestureDetector(
      //           onTap: () {
      //             //  Navigator.push(
      //             //   context,
      //             //   MaterialPageRoute(
      //             //           builder: (context) => LoginView(),
      //             //   ),
      //             // );
      //           },
      //           child: Stack(
      //             alignment: Alignment.center,
      //             children: [
      //               Image(
      //                 image: AssetImage("assets/images/Ellipse.png"),
      //               ), // Back image
      //               Image(
      //                 image: AssetImage("assets/images/Notification.png"),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
//       body: ListView.builder(
//         scrollDirection: Axis.horizontal,
//           itemCount: DataConstant.Project.length,
//           padding: EdgeInsetsDirectional.symmetric(vertical: 10),
//           itemBuilder: (context, i) {
//             return Container(
//               height: 200,
//               width: 270,
//               // height: MediaQuery.of(context).size.height * 0.3,
//               // width: MediaQuery.of(context).size.width * 0.4,
//               decoration: BoxDecoration(
//                 color: Color(0xFF756EF3),
//                 borderRadius: BorderRadius.circular(10)
//               ),
//               child: Column(
//                 children: [
//                   Text(${Text})
//                 ],
//               ),

//             );

//           },),
//       // body: Padding(
//       //   padding: const EdgeInsets.all(20.0),
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.start,
//       //           crossAxisAlignment: CrossAxisAlignment.start,
//       //     children: [
//       //       Container(
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "Let's make a",
              //       style: GoogleFonts.poppins(
              //         textStyle: const TextStyle(
              //           fontSize: 25,
              //           fontWeight: FontWeight.w600,
              //           color: Color(0xFF002055),
              //         ),
              //       ),
              //     ),
              //     Text(
              //       "Habbit together 🙌",
              //       style: GoogleFonts.poppins(
              //         textStyle: const TextStyle(
              //           fontSize: 25,
              //           fontWeight: FontWeight.w600,
              //           color: Color(0xFF002055),
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 30,
              //     ),

              //   ],
              // ),
//       //       ),
//       //       Container(
//       //               height: MediaQuery.of(context).size.height * 0.22,
//       //               width: MediaQuery.of(context).size.height * 0.35,
//       //               decoration: BoxDecoration(
//       //                 color: Color(0xFF756EF3),
//       //                 borderRadius: BorderRadius.circular(15)
//       //               ),
//       //             )

//         //   ],
//         // ),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Container List with Header'),
//         ),
//         body: ContainerListWithHeader(),
//       ),
//     );
//   }
// }

// class ContainerListWithHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
          
//           child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Let's make a",
//                     style: GoogleFonts.poppins(
//                       textStyle: const TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF002055),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "Habbit together 🙌",
//                     style: GoogleFonts.poppins(
//                       textStyle: const TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF002055),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),

//                 ],
//               ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: 10, // Adjust the number of containers as needed
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.symmetric(
//                     vertical: 10), // Adjust vertical spacing here
//                 child: Container(
//                   height: 200,
//                   width: 270,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                      color: Color(0xFF756EF3), // Change the color as desired
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Container $index',
//                       style: TextStyle(
//                         color: Colors.white, // Change the text color as desired
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                "Friday,26",
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.stretch,
      
        children: [
         Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "Let's make a",
                   style: GoogleFonts.poppins(
                     textStyle: const TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.w600,
                       color: Color(0xFF002055),
                     ),
                   ),
                 ),
                 Text(
                   "Habbit together 🙌",
                   style: GoogleFonts.poppins(
                     textStyle: const TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.w600,
                       color: Color(0xFF002055),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
         
               ],
             ),
          Expanded(
            
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              
              itemCount: 10, // Adjust the number of containers as needed
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  
                  child: SizedBox(
                    height: 170,
                    child: Container(
                      // height: 200,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF756EF3), // Change the color as desired
                      ),
                      child: Center(
                        child: Text(
                          'Container $index',
                          style: TextStyle(
                            color: Colors.white, // Change the text color as desired
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }, 
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Text("In Pogress" ,style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF002055),
                          height: 2,
                        ),
                      ),),
                       Icon(Icons.arrow_back_ios,color: Color(0xFF756EF3),),
            ],
          ),
                 SizedBox(height: 20,),
                  Expanded(
            
            child: Container(           
              child: ListView.builder(
                
                
                itemCount: 10, // Adjust the number of containers as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 80,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Color(0xFFE9F1FF))
                        // Change the color as desired
                      ),
                      child: Center(
                        child: Text(
                          'Container $index',
                          style: TextStyle(
                            color: Colors.white, // Change the text color as desired
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
          ),
      ),
    );
  }
}
