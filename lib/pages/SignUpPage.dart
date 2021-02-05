import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white)
        ),
        centerTitle: true,
        title: Text("Sign Up",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Text("Sign Up",style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
