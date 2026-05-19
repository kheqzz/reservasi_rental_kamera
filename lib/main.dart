import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/helper_shape.dart';
import 'package:flutter_application_1/landing.dart';
import 'package:flutter_application_1/pages/login.dart';
//import 'package:flutter_application_1/pages/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Landing());
  }
}
