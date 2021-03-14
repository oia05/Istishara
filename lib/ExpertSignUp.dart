import 'ExpertType.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

class ExpertSU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpertSignUp();
  }
}

class ExpertSignUp extends StatefulWidget {
  @override
  _ESignUpState createState() => _ESignUpState();
}

class _ESignUpState extends State<ExpertSignUp> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            title: Text("Expert Set up Account",
                style: TextStyle(
                  fontSize: 20,
                ))),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight / 10,
                padding: EdgeInsets.only(top: screenHeight / 25, bottom: 0),
                child: Text(
                  "Get Started with Istishara!",
                  style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                ),
              ),
              Container(
                height: screenHeight / 10,
                padding: EdgeInsets.only(
                  left: screenWidth / 25,
                  right: screenWidth / 25,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                      prefixIcon: Icon(Icons.person,color: Colors.deepPurple,),
                      hintText: "Do not use nick names",
                      labelText: "First Name"),
                  maxLength: 25,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 20
                    
                  ),
                ),
              ),
              Container(
                  height: screenHeight / 10,
                  padding: EdgeInsets.only(
                      left: screenWidth / 25, right: screenWidth / 25),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        prefixIcon: Icon(Icons.person, color: Colors.deepPurple,),
                        labelText: "Last Name",
                        hintText: "Your Family Name"),
                    maxLength: 25,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  )),
              Container(
                  height: screenHeight / 10,
                  padding: EdgeInsets.only(
                      left: screenWidth / 25, right: screenWidth / 25),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Colors.deepPurple,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        labelText: "E-mail",
                        hintText: "Enter valid email as abc@example.com"),
                    maxLength: 25,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 20
                    ),
                  )),
              Container(
                  height: screenHeight / 10,
                  padding: EdgeInsets.only(
                      left: screenWidth / 25, right: screenWidth / 25),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone,color: Colors.deepPurple,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        labelText: "Phone Number",
                        hintText: "8-digits Number"),
                    maxLength: 25,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 20
                    ),
                  )),
              Container(
                  height: screenHeight / 10,
                  padding: EdgeInsets.only(
                      left: screenWidth / 25, right: screenWidth / 25),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Colors.deepPurple,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        labelText: "Password",
                        hintText: "Strong password consists of 8 characters"),
                    maxLength: 25,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 20
                    ),
                  )),
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Experts()));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
