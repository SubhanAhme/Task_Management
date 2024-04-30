import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/constant.dart';
import 'package:provider/provider.dart';

import '../Provider/MemberProvider.dart';
import '../models.dart/members.dart';
import '../utils/DataConstant.dart';
import 'memberList.dart';

class CreateTeam extends StatefulWidget {
  const CreateTeam({super.key});

  @override
  State<CreateTeam> createState() => _CreateTeamState();
}

class _CreateTeamState extends State<CreateTeam> {
  // List selectedMember = Members.getSelectedMembers();
  TextEditingController teamName = TextEditingController();

  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
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
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
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
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/TeamLogo.png"),
                      Text(
                        "Upload logo file",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF002055),
                            height: 2,
                          ),
                        ),
                      ),
                      Text(
                        "Your logo will publish always",
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
              ),
              Text(
                "Team Name",
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
                      hintText: "Enter Task Name", controller: teamName)),
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
                                                    color: Color(0xffe848194),
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
              const SizedBox(
                height: 20,
              ),
              Text(
                "Type",
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
                          "Private",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: (activeTab == 0)
                                  ? const Color(0xFFE848194)
                                  : const Color(0xFF002055),
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
                          "Public",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: (activeTab == 1)
                                  ? const Color(0xFFE848194)
                                  : const Color(0xFF002055),
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
                          "Secret",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: (activeTab == 2)
                                  ? const Color(0xFFE848194)
                                  : const Color(0xFF002055),
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GradientButton(
                  onPressed: () {},
                  child: Text(
                    "Create Team",
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
