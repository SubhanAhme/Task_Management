// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Provider/MemberProvider.dart';
import 'package:provider/provider.dart';

import '../models.dart/members.dart';
import '../utils/colors.dart';
import 'addTask.dart';

class MembersList extends StatefulWidget {
  const MembersList({super.key});

  @override
  State<MembersList> createState() => _MembersListState();
}

class _MembersListState extends State<MembersList> {
  @override
  Widget build(BuildContext context) {
    final MembersProvider getMember = Provider.of<MembersProvider>(context);
    Constants myConstants = Constants();
    Size size = MediaQuery.of(context).size;
//     // List Member = Members.membersList
//     //     .where((Member) => Member.isDefault == false)
//     //     .toList();
    return Scaffold(
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
              Consumer<MembersProvider>(builder: (context, value, child) {
                return Text('${value.selectedMembers.length} selected',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF002055),
                        height: 2,
                      ),
                    ));
              })
            ],
          ),
        ),
      ),
      body: Consumer<MembersProvider>(
        builder: (context, value, child) {
          List memberData = value.MembersList;
          return ListView.builder(
            itemCount: memberData.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> member = memberData[index];
              String memberName = member['memberName'];
              String profilePic = member['profilePic'];
              int id = member['id'];
              bool isSelected = member['isSelected'];
              return GestureDetector(
                onTap: () {
                  value.toggleSelectionById(id);
                  // print(value.selectedMember);
                  // if (value.selectedMember.contains(index)) {
                  //   value.getRemove(index,memberName,profilePic);
                  //   // value.getRemove(Member[index].memberName,Member[index].ProfilePic);
                  // } else {
                  //   value.getSelected(index,memberName,profilePic);
                  //   // value.getSelected(Member[index].memberName,Member[index].ProfilePic);
                  // }
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height * .08,
                  width: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: isSelected
                          ? Border.all(
                              color: const Color(0xFF756EF3),
                              width: 2,
                            )
                          : Border.all(color: const Color(0xFFE9F1FF)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFE9F1FF),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Row(
                    children: [
                      Icon(
                          isSelected
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: isSelected
                              ? const Color(0xFF756EF3)
                              : Colors.black54),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                          radius: 26, backgroundImage: AssetImage(profilePic)),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        memberName,
                        // value.MembersList[index].memberName,
                        //  Members.memberList[index].memberName,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? myConstants.primaryColor
                                : Colors.black54,
                            height: 2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: myConstants.secondaryColor,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

