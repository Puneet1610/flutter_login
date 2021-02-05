import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height / 2,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                color: Colors.white60,
                margin: EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Text(
                          "Service Provider Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Colors.blue),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(30)
                          ],
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          maxLength: 30,
                          // maxLengthEnforced: true,
                          decoration: const InputDecoration(
                            hintText: "Enter the email",
                            border: OutlineInputBorder(),
                            // focusedBorder: OutlineInputBorder(
                            //     borderSide:
                            //         BorderSide(color: Colors.black87, width: 1.0),
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(8.0))),
                            // enabledBorder: OutlineInputBorder(
                            //     borderSide:
                            //         BorderSide(color: Colors.black87, width: 1.0),
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(8.0))),
                            labelText: "Email Id",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Required";
                            } else {
                              if (EmailValidator.validate(value)) {
                                return null;
                              } else
                                return "Invalid Email";
                            }
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                        ),
                        TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10)
                          ],
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          maxLines: 1,
                          maxLength: 10,
                          maxLengthEnforced: true,
                          decoration: const InputDecoration(
                            hintText: "Enter the password",
                            border: OutlineInputBorder(),
                            /*focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black87, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black87, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))
                            ),*/
                            labelText: "Password",
                            /*suffixIcon: IconButton(
                              onPressed: (){
                                 setState(() {
                                       hidePassword = !hidePassword;
                                 });
                              },
                              icon: Icon(hidePassword?Icons.visibility_off : Icons.visibility),
                            ),*/
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Required";
                            } else {
                              return null;
                            }
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        InkWell(
                          onTap: () {
                            print("Forget Password Clicked");
                            Fluttertoast.showToast(
                                msg: "Forget Password Click",
                                toastLength: Toast.LENGTH_SHORT,
                                backgroundColor: Colors.blue,
                                textColor: Colors.white);
                            Navigator.pushNamed(context, "/forgetPass");
                          },
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.blue),
                          ),
                        ),
                        SizedBox(height: 5),
                        ButtonTheme(
                          minWidth: size.width,
                          child: RaisedButton(
                            onPressed: validate,
                            color: Colors.blue,
                            textColor: Colors.white,
                            elevation: 5.0,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                            padding: EdgeInsets.all(10.0),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Does not have account?",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 17.0),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                                onTap: () {
                                  print("Sign In Clicked");
                                  Fluttertoast.showToast(
                                      msg: "Sign In Clicked",
                                      toastLength: Toast.LENGTH_SHORT,
                                      backgroundColor: Colors.blue,
                                      textColor: Colors.white);
                                  Navigator.pushNamed(context, "/signUp");
                                },
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validate() {
    if (formKey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }
}
