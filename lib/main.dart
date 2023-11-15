import 'package:flutter/material.dart';
import 'package:mynd_demo/View/signup_screen.dart';
import 'package:mynd_demo/View/splash_screen.dart';

import 'View/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(title: ''),
    );
  }
}
