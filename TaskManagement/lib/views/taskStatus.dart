import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(TaskStatus());

class TaskStatus extends StatefulWidget {
  @override
  State<TaskStatus> createState() => _TaskStatusState();
}

class _TaskStatusState extends State<TaskStatus> {
  bool _isHovered = false;
  var selectedContainer = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 0,
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0.0,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
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
                  "Task Status",
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                      top: 90,
                      left: 140,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "65%",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF002055),
                              ),
                            ),
                          ),
                          Text(
                            "Complete",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF848A94),
                              ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    // top: 90,
                    // left: 140,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: PieChart(
                        PieChartData(
                          borderData: FlBorderData(
                              border: const Border.symmetric(
                                  // horizontal: BorderSide(strokeAlign: BorderSide.strokeAlignOutside),
                                  vertical: BorderSide(width: 20))),
                          sections: [
                            PieChartSectionData(
                              color: const Color(0xFF756EF3),
                              value: 45,
                              showTitle: false,
                              radius: 25,
                            ),
                            PieChartSectionData(
                              color: const Color(0xFFB1D199),
                              value: 10,
                              showTitle: false,
                              radius: 25,
                            ),
                            PieChartSectionData(
                              color: const Color(0xFFFFB35A),
                              value: 45,
                              showTitle: false,
                              radius: 25,
                            ),
                          ],

                          pieTouchData: PieTouchData(enabled: true),
                          sectionsSpace: 0,
                          centerSpaceRadius: 70,

                          // startDegreeOffset: 120
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Ellipse709.png",
                          color: const Color(0xFFB1D199)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "To do",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF002055),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/Ellipse709.png",
                        color: const Color(0xFFFFB35A),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "In Progress",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF002055),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/Ellipse709.png",
                        color: const Color(0xFF756EF3),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Complete",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF002055),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Monthly",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF002055),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedContainer = 0;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: selectedContainer == 0
                            ? const Color(0xFF756EF3)
                            : const Color(0xFFE9F1FF),
                        // color: const Color(0xFFE9F1FF)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("To Do",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF002055),
                                ),
                              )),
                          Text("18 tasks now",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF848A94),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedContainer = 1;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: selectedContainer==1
                            ? const Color(0xFF756EF3)
                            : const Color(0xFFE9F1FF),
                        // color: const Color(0xFFE9F1FF)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("In Progress",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF002055),
                                ),
                              )),
                          Text("18 tasks now",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF848A94),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedContainer = 2;
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: selectedContainer == 2
                            ? const Color(0xFF756EF3)
                            : const Color(0xFFE9F1FF),
                        // color: const Color(0xFFE9F1FF)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Completed",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF002055),
                                ),
                              )),
                          Text("18 tasks now",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF848A94),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
