import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
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
        title: Text("Forget Password",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Text("Forget Password",style: TextStyle(
              fontSize: 24.0,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
