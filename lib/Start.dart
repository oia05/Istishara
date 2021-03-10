import 'package:Istishara/Login.dart';
import 'package:flutter/material.dart';



class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Start();
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
           backgroundColor: Colors.white,
            body: Stack( children: [
             Align( alignment: Alignment(0,-1),child:Container(
          child: Image.asset("asset/images/IstisharaImage3.png"),
        ) )
          ,Align(alignment: Alignment(0,0.5),
                child: Container(
      width: screenWidth,
      height: screenHeight/2,
      alignment: Alignment.center,
      child: Column(children: [
         Center(child: Text("\n"),),
         Center( child: Text("New to Istishara? Create account",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))),
         Container(child:Text(""),),
        Row(children: [
          Container(width: screenWidth/2, child:
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
            ),)
          ),
          Spacer(),
          Container(width: screenWidth/2.1 ,child:
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
            ),
          ))
        ]),
        Container(height: screenHeight/10,),
        Center( child: Text("Already have an account?",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15))),
        Container(child: Text(""),),
        Center(
            child: OutlinedButton(
              onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyApp()));},
              child: Text("Sign In",
                 
                  style: TextStyle(
                      fontSize: 15,
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
          ),

      ]),
    )
    )
            ],)
            );
  }
}
