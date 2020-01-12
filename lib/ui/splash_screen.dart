import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/app_home.dart';
import 'package:sos/ui/home.dart';
class SplashScreen extends StatefulWidget{
  _SplashScreenState createState()=> _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  Timer timer;
  @override
  Widget build(BuildContext context) {
    timer =new Timer(const Duration(milliseconds: 2000), () {
      LocalData.getUser().then((user){
        if(user!=null){
          print("User from if : : :    $user");
          Navigator.of(context).pushReplacement(new MaterialPageRoute(
              builder: (BuildContext context) => AppHome()));
        }
        else{
          print("User from else : : :    $user");
          Navigator.of(context).pushReplacement(new MaterialPageRoute(
              builder: (BuildContext context) => Home()));
        }
      });

      });
    return Scaffold(
      backgroundColor: SOSColors.backGround,
      body: Container(
        padding: EdgeInsets.only(left:32,right: 32,top: 16,bottom: 16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
              Text("Welcome to \n \"SOS\"",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontSize: 26,
                  fontWeight: FontWeight.w700
                ),
              ),
            Image.asset('images/logo.png'),
            Text('Don’t worry! You are \nsafe with us.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                height: 1.5,
              ),
            ),
          ],
        )
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    timer.cancel() ;
  }


}