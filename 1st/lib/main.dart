import 'package:ecomerch_app_v1/bottom_nav-controller.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavController());
  }
}
