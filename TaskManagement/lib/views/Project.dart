import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/constant.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  TextEditingController search = TextEditingController();
  int activeTab = 0;
  int selectedTab = 0;
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
                "Project",
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
      // body: SingleChildScrollView(
      //     child: Padding(
      //   padding: const EdgeInsets.all(12.0),

      // )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 48,
                      child: MyTextField(
                          controller: search,
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                          height: 32,
                          width: 94,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                  color: (activeTab == 0)
                                      ? Color(0xFF756EF3)
                                      : Color(0xFFE9F1FF))),
                          child: Center(
                            child: Center(
                              child: Text(
                                "Favourites",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: (activeTab == 0)
                                        ? Color(0xFF002055)
                                        : Color(0xFFE848194),
                                    height: 2,
                                  ),
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
                          height: 32,
                          width: 94,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                color: (activeTab == 1)
                                    ? Color(0xFF756EF3)
                                    : Color(0xFFE9F1FF),
                              )),
                          child: Center(
                            child: Center(
                              child: Text(
                                "Recent",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: (activeTab == 1)
                                        ? Color(0xFF002055)
                                        : Color(0xFFE848194),
                                    height: 2,
                                  ),
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
                          height: 32,
                          width: 94,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                  color: (activeTab == 2)
                                      ? Color(0xFF756EF3)
                                      : Color(0xFFE9F1FF))),
                          child: Center(
                            child: Text(
                              "All",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: (activeTab == 2)
                                     ? Color(0xFF002055)
                                        : Color(0xFFE848194),
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
                            activeTab = 3;
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: (activeTab == 3)
                                        ? Color(0xFF756EF3)
                                        : Color(0xFFE9F1FF))),
                            child: Image.asset("assets/images/Category.png")),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    Color borderColor = (index == selectedTab)
                        ? Color(0xFF756EF3)
                        : Color(0xFFE9F1FF);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTab = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 94,
                        width: 350,
                        decoration: BoxDecoration(
                          border: Border.all(color: borderColor),
                          color: Color(0xFFFFFFFF), // Purple color
                          borderRadius:
                              BorderRadius.circular(16.0), // Rounded borders
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Unity DashBoard",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF002055),
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 18,
                                    width: 46,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xFFEECF4E5),
                                        ),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: Center(child: Text("10/20")),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Design",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF868D95),
                                    height: 1.2,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 2; i++)
                                    Align(
                                      widthFactor: 0.8,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 10,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundImage: AssetImage(
                                              'assets/images/Profile.jpg'),
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    height: 5.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: LinearProgressIndicator(
                                        value:
                                            0.5, // Set the progress value between 0.0 and 1.0
                                        backgroundColor: Color(
                                            0xFFEECF4E5), // Background color
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0xFFEB0D97F),
                                        ), // Progress color
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
