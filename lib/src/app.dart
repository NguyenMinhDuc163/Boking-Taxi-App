import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icar/src/resources/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
