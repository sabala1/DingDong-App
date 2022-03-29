import 'package:dingdong_app/models/models.dart';
import 'package:dingdong_app/views/screens/login_screen.dart';
import 'package:dingdong_app/views/screens/swipe/swipe_bloc.dart';
import 'package:dingdong_app/views/screens/swipe/swipe_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Ubuntu',
      ),
      home: const LoginScreen(),
    );
  }
}



