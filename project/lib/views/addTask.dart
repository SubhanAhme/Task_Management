import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/constant.dart';

import '../utils/DataConstant.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  int activeTab = 0;
  TextEditingController taskName = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();

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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    //  Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //           builder: (context) => MyHomePage(),
                    //   ),
                    // );
                  },
                  child: Image.asset("assets/images/Back.png")),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.22,
              ),
              Text(
                "Add Task",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF002055),
                    height: 2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Task Name",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE848194),
                    height: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: MyTextField(
                      hintText: "Enter Task Name", controller: taskName)),
              SizedBox(
                height: 20,
              ),
              Text(
                "Team Member",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE848194),
                    height: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    // onPageChanged: (index, reason) {
                    //   setState(() {
                    //     activeTab = index;
                    //   });
                    // },
                    aspectRatio: 2.2, // Adjust the aspect ratio as needed
                    enlargeCenterPage: false,
                    // viewportFraction: 76 / 100
                  ),
                  itemCount: DataConstant.AddMember.length,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: EdgeInsets.only(top: 10, right: 10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Color(0xFFFFFFFF),
                            child: ImageIcon(
                              AssetImage(
                                  "${DataConstant.AddMember[index]["profileImage"]}"),
                              size: 24,
                              color: Color(0xFF756EF3),
                            ),
                          ),
                          Text("${DataConstant.AddMember[index]["name"]}")
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Date",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE848194),
                    height: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: MyTextField(hintText: "Enter Task Date", controller: date),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Start",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE848194),
                            height: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * (147 / 400),
                        child: MyTextField(hintText: "", controller: startDate),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "End",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE848194),
                            height: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * (147 / 400),
                        child: MyTextField(hintText: "", controller: endDate),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Board",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFE848194),
                    height: 2,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeTab = 0;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color:  (activeTab==0) ? Color(0xFF756EF3) : Color(0xFFE9F1FF))),
                      child: Center(
                        child: Text(
                          "Urgent",
                          style: GoogleFonts.poppins(
                            textStyle:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:  (activeTab==0) 
                             ? Color(0xFFE848194)
                             : Color(0xFF002055),
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeTab = 1;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all( color:  (activeTab==1) ? Color(0xFF756EF3) : Color(0xFFE9F1FF),)),
                      child: Center(
                        child: Text(
                          "Running",
                          style: GoogleFonts.poppins(
                            textStyle:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                             color:  (activeTab==1) 
                             ? Color(0xFFE848194)
                             : Color(0xFF002055),
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                       setState(() {
                         activeTab = 2;
                       });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color:  (activeTab==2) ? Color(0xFF756EF3) : Color(0xFFE9F1FF))),
                      child: Center(
                        child: Text(
                          "Ongoing",
                          style: GoogleFonts.poppins(
                            textStyle:  TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                             color:  (activeTab==2) 
                              ? Color(0xFFE848194)
                             : Color(0xFF002055),
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: GradientButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                        height: 2,
                      ),
                    ),
                  ),
                  gradientColors: [Color(0xFF756EF3), Color(0xFF756EF3)],
                  height: 48,
                  width: 218,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
