import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynd_demo/View/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required String title}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Image.asset('assets/images/download.jpg'),
        ),
      ),
    );
  }

  @override
  void initState() {
    _initTimer();
  }

  void _initTimer() async {
    await Future.delayed(const Duration(
      seconds: 3,
    ));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
