import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';



import '../constant.dart';
import 'loginview.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController semail_control = TextEditingController();
  TextEditingController spass_control = TextEditingController();
  TextEditingController name = TextEditingController();
  final signUp = SnackBar(
    content: Text('SingUp Seccesfully!'),
    backgroundColor: Color(0xFF756EF3),
  );
  final weakPassword = SnackBar(
    content: Text('Password is too weak'),
    backgroundColor: Color(0xFF756EF3),
  );
  final emailExist = SnackBar(
    content: Text('Email Already Exist'),
    backgroundColor: Color(0xFF756EF3),
  );

  void clearText() {
    semail_control.clear();
    spass_control.clear();
    name.clear();
  }

  signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: semail_control.text,
        password: spass_control.text,
      );
       ScaffoldMessenger.of(context).showSnackBar(signUp);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
         ScaffoldMessenger.of(context).showSnackBar(weakPassword);
      } else if (e.code == 'email-already-in-use') {
         ScaffoldMessenger.of(context).showSnackBar(emailExist);
      }
    } catch (e) {
      print(e);
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
                        builder: (context) => LoginView(),
                      ),
                    );
                  },
                  child: Image.asset("assets/images/Back.png")),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.22,
              ),
              Text(
                "Sign Up",
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
              Text("Create Account",
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
              Text("Please enter your information and",
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
              Text("Create your account",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                       color : Color(0xFF868D95),
                        height: 1),
                  )),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: MyTextField(hintText: "Enter Your Name", controller: name)
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child:MyTextField(hintText: "Enter Your Mail",controller: semail_control,)
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: MyTextField(hintText: "Enter Your Password",controller: spass_control,)
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: GradientButton(
                  onPressed: () {
                    signup(context);
                    clearText();
                  },
                  child: Text(
                    'Sign Up',
                   style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                             color :Color(0xFFFFFFFF),
                              height: 1),
                        
                  ),),
                  gradientColors: [Color(0xFF756EF3), Color(0xFF756EF3)],
                  width: MediaQuery.of(context).size.width * 0.9, // Set the width
                  height: 47.0, // Set the height
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
                        Text("Have an Account?",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Color(0xFF868D95),
                                height: 2,
                              ),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ),
                            );
                          },
                          child: Text("Sign In",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF756EF3),
                                 
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
