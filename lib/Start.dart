import 'package:MyApp/Login.dart';
import 'package:flutter/material.dart';



class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return /*MaterialApp(
      theme: ThemeData(
      primarySwatch: Colors.deepPurple,),*/
       _Start();
  }
}

class _Start extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StartState();
  }
}

class _StartState extends State<_Start> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           backgroundColor: Colors.white,
            body: Stack( children: [
             Align( alignment: Alignment(0,-1),child:Container(
          child: Image.asset("asset/images/IstisharaImage3.png"),
        ) )
          ,Align(alignment: Alignment(0,0.5),
                child: Container(
      width: double.infinity,
      height: 250,
      alignment: Alignment.center,
      child: Column(children: [
        Row( children: [Container(width: 110,),  Text("New to Istishara? Create account",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))],),
         Container(height: 15,),
        Row(children: [
          OutlinedButton(
            child: Text("Sign Up as Help-Seeker",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff5848CF) )),
            onPressed: null,
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 3.0, color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              minimumSize: Size(43,50)
            ),
          ),
          Spacer(),
          OutlinedButton(
            child: Text("Sign Up as an Expert",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff5848CF))),
            onPressed: null,
            style: ElevatedButton.styleFrom(
              side: BorderSide(width: 3.0, color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              minimumSize: Size(40,50)
            ),
          )
        ]),
        Container(height: 75,),
        Row(children: [Container(width: 120,),  Text("Already have an account?",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))],),
        Container(height: 15,),
        Row(
          children: [
            Container(
              width: 170,
            ),
            OutlinedButton(
              onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyApp()));},
              child: Text("Sign In",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff5848CF))),
              style: ElevatedButton.styleFrom(
                side: BorderSide(width: 3.0, color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                minimumSize: Size(100,50)
              ),
            ),
          ],
        ),
      ]),
    )
    )
            ],)
            );
  }
}
