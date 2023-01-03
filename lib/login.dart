import 'dart:io';

import 'package:flutter/material.dart';
import 'register.dart';
import 'Booking_Info.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Create an Account',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              SizedBox(height: 50),
              Container(
                width: 320,
                child: TextFormField(
                  validator:(val)=> val!.isEmpty ? 'Enter an email': null,
                  decoration: InputDecoration(

                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.blue[400]),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                child: TextFormField(
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.blue[400]),
                      ),

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue)),

                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                      icon: Icon(hidePassword?Icons.visibility_off:Icons.visibility),

                    )
                  ),

                ),

              ),
              SizedBox(height: 25),
              Text(
                'Forgot Your Password?CLick Here',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 25),
              Container(
                  width: 320,
                  height: 60,
                  child: ElevatedButton(
                    child: Text("LOGIN"),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Booking()));
                    },
                  )),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => register()));
                },
                child: Text(
                  "Don't have an account?Click Here",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              SizedBox(height: 80),
              Text(
                'Not Verified pop up',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
