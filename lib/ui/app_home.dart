import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/yes_condition.dart';
class AppHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SOSColors.backGround,
      body:  Container(
          padding: EdgeInsets.only(left:32,right: 32,top: 16,bottom: 16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Do you have any \nemergency?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1.9,
                    fontSize: 26,
                    fontWeight: FontWeight.w700
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => YesCondition()));
                },
                child: Image.asset('images/yeshelp.png'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: SOSColors.greenLight,
                  borderRadius: BorderRadius.circular(8)
                ),
                width: MediaQuery.of(context).size.width/1.2,
                height: 55,
                child: Center(
                  child: Text('NO, I`m safe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      height: 1.5,
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
