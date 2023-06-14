import 'package:flutter/material.dart';
import 'package:to_do_list/list.dart';
import 'package:to_do_list/login_page.dart';
import 'package:to_do_list/splash_screen.dart';
import 'addlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
