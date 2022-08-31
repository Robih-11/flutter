import 'package:flutter/material.dart';
import 'package:flutter_dicoding/home/home_page.dart';
import 'package:flutter_dicoding/welcome/welcome_page.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

void main() => runApp(FlutterDicoding());

class FlutterDicoding extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
