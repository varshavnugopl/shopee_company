import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopee_business/company_profile.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Initstate();
}

class Initstate extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, nextPage);
  }

  nextPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const CompanyProfile()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280,
              child: Card(
                child: Text(
                    'your registration process completed with 24 hour your account will be activated',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w900)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
