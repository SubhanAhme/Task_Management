import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project/Provider/MemberProvider.dart';
import 'package:project/constant.dart';
import 'package:project/views/memberList.dart';
import 'package:provider/provider.dart';

import '../models.dart/members.dart';
import '../utils/DataConstant.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  // late MembersProvider member = Provider.of<MembersProvider>(context);
  // List<Members> selectedMember = Members.getSelectedMembers();
  DateTime _dateTime = DateTime.now();
  TimeOfDay _startDay = TimeOfDay.now();
  TimeOfDay _endDay = TimeOfDay.now();
  void _showstartTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _startDay = value!;
      });
    });
  }

  void _showendTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _endDay = value!;
      });
    });
  }

  void _showdatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2023),
            lastDate: DateTime(2030))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  int activeTab = 0;
  TextEditingController taskName = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final MembersProvider getMember = Provider.of<MembersProvider>(context);
    return Scaffold(
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
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
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
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: MyTextField(
                      hintText: "Enter Task Name", controller: taskName)),
              const SizedBox(
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
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: Consumer<MembersProvider>(
                    builder: (context, members, child) {
                  List memberData = members.selectedMembers;

                  return Row(
                    children: [
                      if (memberData.isNotEmpty)
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: memberData.length,
                            itemBuilder: (context, index) {
                              Map<String, dynamic> member = memberData[index];
                              String memberName = member['memberName'];
                              String profilePic = member['profilePic'];
                              int id = member['id'];
                              bool isSelected = member['isSelected'];
                              return Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 5),
                                  child: Consumer<MembersProvider>(
                                    builder: (context, value, child) {
                                      return Row(
                                        children: [
                                          Column(
                                            children: [
                                              CircleAvatar(
                                                  // radius: 30,
                                                  backgroundColor:
                                                      const Color(0xFFFFFFFF),
                                                  child: CircleAvatar(
                                                    backgroundImage:
                                                        AssetImage(profilePic),
                                                  )),
                                              Text(
                                                memberName,
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFE848194),
                                                    height: 2,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ));
                            },
                          ),
                        ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MembersList(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 5),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                child: CircleAvatar(
                                  radius: 19,
                                  backgroundColor: Color(0xFFFFFFFF),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF756EF3),
                                  ),
                                ),
                              ),
                              Text(
                                "Add",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFE848194),
                                    height: 2,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
              ),
              const SizedBox(
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
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: _showdatepicker,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFE9F1FF))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      // "${_dateTime.month.toString()} ${_dateTime.day.toString()} , ${_dateTime.year}",
                      // ignore: unnecessary_string_interpolations
                      "${DateFormat("yMMMMd").format(_dateTime)}",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF002055),
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: _showendTimePicker,
                        child: Container(
                          height: 60,
                          width:
                              MediaQuery.of(context).size.width * (147 / 400),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: const Color(0xFFE9F1FF))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              _endDay.format(context).toString(),
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF002055),
                                  height: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
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
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: _showstartTimePicker,
                        child: Container(
                          height: 60,
                          width:
                              MediaQuery.of(context).size.width * (147 / 400),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: const Color(0xFFE9F1FF))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              _startDay.format(context).toString(),
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF002055),
                                  height: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          border: Border.all(
                              color: (activeTab == 0)
                                  ? const Color(0xFF756EF3)
                                  : const Color(0xFFE9F1FF))),
                      child: Center(
                        child: Text(
                          "Urgent",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: (activeTab == 0)
                                  ? const Color(0xFF002055)
                                  : const Color(0xFFE848194),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          border: Border.all(
                            color: (activeTab == 1)
                                ? const Color(0xFF756EF3)
                                : const Color(0xFFE9F1FF),
                          )),
                      child: Center(
                        child: Text(
                          "Running",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: (activeTab == 1)
                                  ? const Color(0xFF002055)
                                  : const Color(0xFFE848194),
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          border: Border.all(
                              color: (activeTab == 2)
                                  ? const Color(0xFF756EF3)
                                  : const Color(0xFFE9F1FF))),
                      child: Center(
                        child: Text(
                          "Ongoing",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: (activeTab == 2)
                                  ? const Color(0xFF002055)
                                  : const Color(0xFFE848194),
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GradientButton(
                  onPressed: () {
                    getMember.clearSelectedMembers();
                  },
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
                  gradientColors: [
                    const Color(0xFF756EF3),
                    const Color(0xFF756EF3)
                  ],
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
