import 'dart:async';

import 'package:chat_scholar_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static String id = 'Splash Page';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(LoginPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff274460),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Center(
          child: Container(
            child: Column(
              children: [
                Spacer(
                  flex: 3,
                ),
                Image.asset(
                  'assets/images/scholar.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  titleName,
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Spacer(),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
