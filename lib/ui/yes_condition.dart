import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:url_launcher/url_launcher.dart';
class YesCondition extends StatefulWidget {
  @override
  _YesConditionState createState() => _YesConditionState();
}
class _YesConditionState extends State<YesCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SOSColors.backGround,
      body:Container(
          padding: EdgeInsets.only(left:16,right: 16,top: 54,bottom: 16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 8,right: 64),
                width: MediaQuery.of(context).size.width/1.2,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/containerwithcircle.png'),
                      fit: BoxFit.cover,
                    )
                ),
                child: Center(
                  child: Text("Call Police",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8,right: 64),
                width: MediaQuery.of(context).size.width/1.2,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/containerwithcircle.png'),
                      fit: BoxFit.cover,
                    )
                ),
                child: Center(
                  child: Text("Call Fire",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8,right: 64),
                width: MediaQuery.of(context).size.width/1.2,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/containerwithcircle.png'),
                      fit: BoxFit.cover,
                    )
                ),
                child: Center(
                  child: Text("Call Ambulance",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ),
              Text('OR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              //tell my trustees
              InkWell(
                onTap: (){
                  LocalData.getUser().then((user){
                    launch("tel://${user.trustee1Phone}");
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 8,right: 64),
                  width: MediaQuery.of(context).size.width/1.2,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/containerwithcircle.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: Text("Tell my trustees",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
