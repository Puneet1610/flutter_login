import 'package:flutter/material.dart';
import 'package:flutter_login/pages/ForgetPasswordPage.dart';
import 'package:flutter_login/pages/HomePage.dart';
import 'package:flutter_login/pages/LoginPage.dart';
import 'package:flutter_login/pages/SignUpPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginPage(),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context)=> LoginPage(),
        "/signUp" : (context) => SignUpPage(),
        "/forgetPass" : (context) => ForgetPasswordPage(),
        "/home" : (context) => HomePage()
      },
    );
  }
}
