import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/models.dart/members.dart';
import 'package:project/views/HomePage.dart';
import 'package:project/views/bottomNavigator.dart';
import 'package:project/views/initializer.dart';
import 'package:project/views/page1.dart';
import 'package:project/views/taskStatus.dart';
import 'package:provider/provider.dart';

import 'Provider/MemberProvider.dart';
import 'colors.dart';
import 'constant.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>(MembersProvider()),
        child: MaterialApp(
          title: 'Task Manager App',
          theme: ThemeData(
              primarySwatch: primary,
              textTheme: const TextTheme(
                bodyLarge: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    height: 1),
              )),
          home: const BottomNavigator(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
