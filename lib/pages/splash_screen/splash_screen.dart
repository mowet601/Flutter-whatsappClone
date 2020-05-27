import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: Colors.black,
     ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 200.0,),
                  Image.asset('assets/logo-black.jpg',
                  fit: BoxFit.contain,
                    height: 250.0,
                    width: 250.0,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 250.0,),
          Text("from",style: TextStyle(fontSize: 15.0,color: Color(0xff075E54),decoration: TextDecoration.none),textAlign: TextAlign.center,),
          Text("FACEBOOK",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,decoration:TextDecoration.none,color: Color(0xff075E54)),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
