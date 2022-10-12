import 'package:flutter/material.dart';
import 'package:shopee_business/cpmpany_details.dart';
import 'package:shopee_business/select_typeof_busines.dart';
import 'package:shopee_business/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopee business',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Welcome(),
    );
  }
}
