import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/singupview.dart';

import '../constant.dart';
import '../main.dart';
import 'HomePage.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController email_control = TextEditingController();
  TextEditingController pass_control = TextEditingController();
  final password = SnackBar(
    content: Text('Wrong Password!'),
    backgroundColor:Color(0xFF756EF3),
  );
  final email = SnackBar(
    content: Text('No User Found'),
    backgroundColor:Color(0xFF756EF3),
  );
  final Login = SnackBar(
    content: Text('Login Successfully'),
    backgroundColor:Color(0xFF756EF3),
  );
  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email_control.text, password: pass_control.text);
      ScaffoldMessenger.of(context).showSnackBar(Login);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(email);
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(password);
      }
    }
  }

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
              GestureDetector(
                  onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                    ),
                  );
                  },
                  child: Image.asset("assets/images/Back.png")),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              Text(
                "Sign In",
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
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Welcom Back",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF002055),
                      height: 1.2,
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Please enter your email address",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color : Color(0xFF868D95),
                        height: 1),
                  )),
              SizedBox(
                height: 10,
              ),
              Text("and password for login",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color : Color(0xFF868D95),
                        height: 1),
                  )),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: MyTextField(hintText: "Enter your mail",controller: email_control,)
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: MyTextField(hintText: "Enter Your Password",controller: pass_control,)
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .5, top: 15),
                child: GestureDetector(
                  child: Text("Forgot Password?",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF002055),
                          height: 1.2,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: GradientButton(
                  onPressed: () {
                     login(context);
                    
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                             color :Color(0xFFFFFFFF),
                              height: 1),
                        
                  ),
                  ),
                   gradientColors: [Color(0xFF756EF3), Color(0xFF756EF3)],
                  width: MediaQuery.of(context).size.width * 0.9, // Set the width
                  height: 47, // Set the height
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Signin with",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color : Color(0xFF868D95),
                              height: 1),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Google.png"),
                        SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/images/Apple.png")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Not register yet?",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF868D95),
                                height: 2,
                              ),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: Text("Sign Up",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF756EF3),
                                  height: 2,
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
