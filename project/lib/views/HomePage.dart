

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double progress = 0.6;
  int activeTab = 0;
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Let's make a\nHabbit together 🙌",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF002055),
                    ),
                  ),
                ),
              ),
              
            
            ],
          ),
          CarouselSlider.builder(
          itemCount: 10, // Adjust the number of containers as needed
          options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  activeTab = index;
                });
              },
              aspectRatio: 2.2, // Adjust the aspect ratio as needed
              enlargeCenterPage: false,
              // viewportFraction: 76 / 100
              ),
          itemBuilder: (context, index, realIndex) {
            // Calculate the container's color
            Color containerColor =
                (index == activeTab) ? Color(0xFF756EF3) : Colors.white;
                Color borderColor =
                (index == activeTab) ? Color(0xFF756EF3) : Color(0xFFE9F1FF);
            Color textColorMain = (index == activeTab)
                ? Color(0xFFFFFFFF)
                : Color(0xFF002055);
            Color textColorSub = (index == activeTab)
                ? Color(0xFFC5DAFD)
                : Color(0xFFA0BAC5);
            Color textColorSub2 =
                (index == activeTab) ? Colors.white : Colors.transparent;
            Color ProgressBarColor = (index == activeTab)
                ? Color.fromARGB(255, 184, 188, 196)
                : Colors.transparent;
          
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(
                  right: 60.0,top: 20
                ),
                height: 140,
                width: 260,
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  color: containerColor, // Purple color
                  borderRadius:
                      BorderRadius.circular(20.0), // Rounded borders
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 23, left: 23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Application Design",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: textColorMain,
                            height: 1.2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "UI Design Kit",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: textColorSub,
                            height: 1.2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              for (int i = 0; i < 3; i++)
                                Align(
                                  widthFactor: 0.8,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 15,
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundImage: AssetImage(
                                          'assets/images/Profile.jpg'),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 0.028,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Progress",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: textColorSub,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "50/80",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: textColorSub2,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 90,
                                height: 5.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Adjust the radius as needed
                                  child: LinearProgressIndicator(
                                    value:
                                        0.5, // Set the progress value between 0.0 and 1.0
                                    backgroundColor:
                                        ProgressBarColor, // Background color
                                    valueColor:
                                        AlwaysStoppedAnimation<Color>(
                                            Colors.white), // Progress color
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
                  ),
         
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "In Pogress",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF002055),
                      height: 2,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){},
               icon:  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF756EF3),
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: Container(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: 10, // Adjust the number of containers as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 20,left: 30,right: 20),
                    child: Container(
                      height: 80,
                      width: 327,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Color(0xFFE9F1FF))
                          // Change the color as desired
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Productivity Mobile App",style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFFE848A94),
                                                  height: 1.2,
                                                ),
                                              ),),
                                Text("Create Detail Booking",style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xFFE002055),
                                                  height:1.2,
                                                ),
                                              ),),
                                Text("2 min ago",style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFFE848A94),
                                                  height: 1.2,
                                                ),
                                              ),)
                              ],
                            ),
                            Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      value: progress,
                                      backgroundColor: Color(0xFFD1E2FE),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xFF756EF3)),
                                    ),
                                    Text(
                                      '${(progress * 100).toStringAsFixed(0)}%',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF002055),
                                          height: 1.2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ],
                        ),
                      )
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List ProfileImages = [
//     'assets/images/photo.jpg',
//     'assets/images/photo.jpg',
//     'assets/images/photo.jpg'
//   ];
//   int activeTab = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: EdgeInsets.only(
//             left: MediaQuery.of(context).size.width * 0.22,
//           ),
//           child: Text(
//             "Friday, 26",
//             style: GoogleFonts.poppins(
//               textStyle: TextStyle(
//                 fontSize: 19,
//                 fontWeight: FontWeight.w500,
//                 color: Color(0xFF002055),
//                 height: 1.2,
//               ),
//             ),
//           ),
//         ),
//         actions: [
//           Container(
//             margin: EdgeInsets.all(7),
//             width: 42.0,
//             height: 42.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: Color.fromARGB(255, 218, 222, 228),
//                 width: 1.0,
//               ),
//             ),
//             child: CircleAvatar(
//               backgroundColor: Colors.transparent,
//               radius: 1.0,
//               child: IconButton(
//                 onPressed: () {},
//                 icon: ImageIcon(
//                   AssetImage('assets/icons/Notifications.png'),
//                   size: 16,
//                 ),
//                 color: Color(0xFF002055),
//               ),
//             ),
//           ),
//         ],
//         leading: Container(
//           margin: EdgeInsets.all(7),
//           width: 42.0,
//           height: 42.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(
//               color: Color.fromARGB(255, 218, 222, 228),
//               width: 1.0,
//             ),
//           ),
//           child: CircleAvatar(
//             backgroundColor: Colors.transparent,
//             radius: 1.0,
//             child: IconButton(
//               onPressed: () {},
//               icon: ImageIcon(
//                 AssetImage('assets/icons/Category.png'),
//                 size: 16,
//               ),
//               color: Color(0xFF002055),
//             ),
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         foregroundColor: Color(0xFF002055),
//         shadowColor: Colors.transparent,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 30, top: 30),
//             child: Text(
//               "Let's make a\nhabit together",
//               style: GoogleFonts.poppins(
//                 textStyle: const TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF002055),
//                   height: 1.2,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           Container(
//             height: 140.0,
//             width: MediaQuery.of(context).size.width,
//             child: CarouselSlider.builder(
//               itemCount: 10, // Adjust the number of containers as needed
//               options: CarouselOptions(
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       activeTab = index;
//                     });
//                   },
//                   aspectRatio: 2.2, // Adjust the aspect ratio as needed
//                   enlargeCenterPage: false,
//                   viewportFraction: 76 / 100),
//               itemBuilder: (context, index, realIndex) {
//                 // Calculate the container's color
//                 Color containerColor =
//                     (index == activeTab) ? Color(0xFF756EF3) : Colors.white;
//                 Color textColorMain = (index == activeTab)
//                     ? Color(0xFFFFFFFF)
//                     : Color(0xFF002055);
//                 Color textColorSub = (index == activeTab)
//                     ? Color(0xFFC5DAFD)
//                     : Color(0xFFA0BAC5);
//                 Color textColorSub2 =
//                     (index == activeTab) ? Colors.white : Colors.transparent;
//                 Color ProgressBarColor = (index == activeTab)
//                     ? Color.fromARGB(255, 184, 188, 196)
//                     : Colors.transparent;

//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       activeTab = index;
//                     });
//                   },
//                   child: Container(
                   
//                     height: 170,
//                     width: 260,
//                     decoration: BoxDecoration(
//                       color: containerColor, // Purple color
//                       borderRadius:
//                           BorderRadius.circular(20.0), // Rounded borders
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(23.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Text(
//                             "Application Design",
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: textColorMain,
//                                 height: 1.2,
//                               ),
//                             ),
//                           ),
                         
//                           Text(
//                             "UI Design Kit",
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.w400,
//                                 color: textColorSub,
//                                 height: 1.2,
//                               ),
//                             ),
//                           ),
                         
//                           Row(
//                             children: [
//                               Row(
//                                 // crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   for (int i = 0; i < ProfileImages.length; i++)
//                                     Align(
//                                       widthFactor: 0.8,
//                                       child: CircleAvatar(
//                                         backgroundColor: Colors.white,
//                                         radius: 15,
//                                         child: CircleAvatar(
//                                           radius: 14,
//                                           backgroundImage: AssetImage(
//                                               'assets/images/photo.jpg'),
//                                         ),
//                                       ),
//                                     )
//                                 ],
//                               ),
                             
//                               Column(
                               
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Text(
//                                         "Progress",
//                                         style: GoogleFonts.poppins(
//                                           textStyle: TextStyle(
//                                             fontSize: 10,
//                                             fontWeight: FontWeight.w400,
//                                             color: textColorSub,
//                                             height: 1.2,
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 15,
//                                       ),
//                                       Text(
//                                         "50/80",
//                                         style: GoogleFonts.poppins(
//                                           textStyle: TextStyle(
//                                             fontSize: 10,
//                                             fontWeight: FontWeight.w500,
//                                             color: textColorSub2,
//                                             height: 1.2,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
                                 
//                                   SizedBox(
//                                     width: MediaQuery.of(context).size.width*.20,
//                                     height: 5.0,
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(
//                                           10.0), // Adjust the radius as needed
//                                       child: LinearProgressIndicator(
//                                         value:
//                                             0.5, // Set the progress value between 0.0 and 1.0
//                                         backgroundColor:
//                                             ProgressBarColor, // Background color
//                                         valueColor:
//                                             AlwaysStoppedAnimation<Color>(
//                                                 Colors.white), // Progress color
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
        
//         ],
//      ),
// );
// }
// }