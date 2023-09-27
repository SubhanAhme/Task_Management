


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models.dart/members.dart';
import '../utils/colors.dart';
import 'addTask.dart';

class MembersList extends StatefulWidget {
  const MembersList({Key? key}) : super(key: key);

  @override
  State<MembersList> createState() => _MembersListState();
}

class _MembersListState extends State<MembersList> {
  @override
  Widget build(BuildContext context) {
    List<Members> Member = Members.memberList.where((Member) => Member.isDefault == false).toList();
    List<Members> selectedMember = Members.getSelectedMembers();
    Constants myConstants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: myConstants.secondaryColor,
      //   title: Text(selectedMember.length.toString() + ' selected'),
      // ),
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
             Text(selectedMember.length.toString() + ' selected',style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF002055),
                    height: 2,
                  ),)),
             
            ],
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: Member.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: size.height * .08,
            width: size.width,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Member[index].isSelected == true ? Border.all(
                color:  Color(0xFF756EF3),
                width: 2,
              ) : Border.all(color: Color(0xFFE9F1FF)),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFE9F1FF),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                )
              ]
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Member[index].isSelected =! Member[index].isSelected;
                    });
                  },
                  // 
                    child: Image.asset(Member[index].isSelected == true ? 'assets/images/checked.png' : 'assets/images/uncheck.png', width: 30,
                     )),
                const SizedBox( width: 10,),
                CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage(Member[index].ProfilePic)),
                  SizedBox(width: 20,),
                Text(Member[index].memberName,   style: GoogleFonts.poppins(
                  textStyle:  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Member[index].isSelected == true ? myConstants.primaryColor : Colors.black54,
                    height: 2,
                  ),
                ),)
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: myConstants.secondaryColor,
        child: const Icon(Icons.add),
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddTask()));
        },
      ),
    );
  }
}

