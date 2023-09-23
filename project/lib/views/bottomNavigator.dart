import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/Chat.dart';

import 'HomePage.dart';
import 'Profile.dart';
import 'Project.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int activeTab = 0;
  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activeTab = 0;
                      currentScreen = HomeScreen();
                    });
                  },
                  child: Image.asset(
                    "assets/images/Home.png",
                    color: activeTab == 0 ? Color(0xFF756EF3) : Color(0xFF002055),
                  )),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    activeTab = 1;
                    setState(() {
                      currentScreen = Project();
                    });
                  },
                  child: Image.asset(
                    "assets/images/Folder.png",
                    color: activeTab == 1 ? Color(0xFF756EF3) : Color(0xFF002055),
                  )),
              MaterialButton(
                  minWidth: 70,
                  onPressed: () {
                    
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (context) => Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/Rectangle.png",color: Color(0xFFE9F1FF)),
                                 Container(
                                  height: 56,
                                  width: 327,
                                  decoration: BoxDecoration(
                                     border: Border.all(color: Color(0xFFE9F1FF)),
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/AddTask.png"),
                                        SizedBox(width: 10,),
                                        Text("Create Task", style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF002055),
                    height: 2,
                  ),
                ),)
                                      ],
                                    ),
                                  ),
                                 ),
                                 Container(
                                  height: 56,
                                  width: 327,
                                  decoration: BoxDecoration(
                                     border: Border.all(color: Color(0xFFE9F1FF)),
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/Plus.png"),
                                        SizedBox(width: 10,),
                                        Text("Create Project", style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF002055),
                    height: 2,
                  ),
                ),)
                                      ],
                                    ),
                                  ),
                                 ),
                                 Container(
                                  height: 56,
                                  width: 327,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(12),
                                     border: Border.all(color: Color(0xFFE9F1FF))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/3User.png"),
                                        SizedBox(width: 10,),
                                        Text("Create Team", style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF002055),
                    height: 2,
                  ),
                ),)
                                      ],
                                    ),
                                  ),
                                 ),
                                 Container(
                                  height: 56,
                                  width: 327,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF),
                                    borderRadius: BorderRadius.circular(12),
                                     border: Border.all(color: Color(0xFFE9F1FF))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/TimeCircle.png"),
                                        SizedBox(width: 10,),
                                        Text("Create Event", style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF002055),
                    height: 2,
                  ),
                ),)
                                      ],
                                    ),
                                  ),
                                 ),
                                 GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset("assets/images/Delete.png"))
                                 
                                ],
                              ),
                            ));
                   
                  },
                  child:  Image.asset(
                      "assets/images/Add.png",
                     
                    ),),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activeTab = 3;
                      currentScreen = Chat();
                    });
                  },
                  child: Image.asset(
                    "assets/images/Chat.png",
                    color: activeTab == 3 ? Color(0xFF756EF3) : Color(0xFF002055),
                  )),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activeTab = 4;
                      currentScreen = Profile();
                    });
                  },
                  child: Image.asset(
                    "assets/images/Profile.png",
                    color: activeTab == 4 ? Color(0xFF756EF3) : Color(0xFF002055),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
