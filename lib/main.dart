import 'package:flutter/material.dart';
import 'package:projetflutter/editProfile.dart';
import 'package:projetflutter/exams.dart';
import 'package:projetflutter/login.dart';
import 'package:projetflutter/news.dart';
import 'package:projetflutter/notes.dart';
import 'package:projetflutter/rattrapage.dart';
import 'package:projetflutter/register.dart';
import 'package:projetflutter/resetPassword.dart';
import 'package:projetflutter/temps.dart';
import 'package:projetflutter/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Fsegs App', routes: {
      "/": (context) => const MyWelcome(),
      "/login": (context) => const Login(),
      "/register": (context) => const Register(),
      "/temps": (context) => const MyTimes(),
      "/exams": (context) => const MyExams(),
      "/notes": (context) => const MyNotes(),
      "/news": (context) => const News(),
      "/resetPassword": (context) => const ResetPassword(),
      "/editProfile": (context) => const EditProfile(),
      "/rattrapage": (context) => const Rattrapage(),
    });
  }
}
