import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/Chat.dart';
import 'package:project/views/addTeam.dart';

import '../constant.dart';
import 'HomePage.dart';
import 'Profile.dart';
import 'Project.dart';
import 'addTask.dart';

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
                      backgroundColor: Color(0xFFFFFFFF),
                       barrierColor: Colors.transparent,

                        shape: const RoundedRectangleBorder(
                          
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (context) => Stack(
                          children: [
                            BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        color: Color(0xFFFFFFFF)
                            .withOpacity(0.1), // Adjust opacity as needed
                      ),
                    ),

                            Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                     Image.asset("assets/images/Rectangle.png",
                                  color: Color(0xFFE9F1FF)),
                              InkWell(
                                 onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddTask(),
                              ),
                            );
                          },
                                child: AddButtonContainer(
                                    icon: "assets/images/AddTask.png",
                                    text: "Create Task"),
                              ),
                              InkWell(
                                child: AddButtonContainer(
                                    icon: "assets/images/Plus.png",
                                    text: "Create Project"),
                              ),
                              InkWell(
                                 onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateTeam  (),
                              ),
                            );
                          },
                                child: AddButtonContainer(
                                    icon: "assets/images/3User.png",
                                    text: "Create Team"),
                              ),
                              InkWell(
                                
                                child: AddButtonContainer(
                                    icon: "assets/images/TimeCircle.png",
                                    text: "Create Event"),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset('assets/images/Delete.png')
                               
                              ),
                                    
                                    ],
                                  ),
                                ),
                          ],
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


