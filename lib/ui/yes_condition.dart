import 'dart:async';
import 'package:call_number/call_number.dart';
import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:hardware_buttons/hardware_buttons.dart';
import 'package:sos/ui/edit_all_settings.dart';
import 'package:flutter_sms/flutter_sms.dart';
class YesCondition extends StatefulWidget {
  @override
  _YesConditionState createState() => _YesConditionState();
}
class _YesConditionState extends State<YesCondition> {
  StreamSubscription _volumeButtonSubscription;
  StreamSubscription _powerButtonSubscription;
  int counter = 0 ;
  //Home button events, via homeButtonEvents.listen.
  //Lock button events, via lockButtonEvents.listen.
  @override
  void initState() {
    super.initState();
    _volumeButtonSubscription = volumeButtonEvents.listen((VolumeButtonEvent event) {
        if(counter <4){
          counter++;
          if(counter == 3){
            LocalData.getUser().then((user)async{
              print("user ::::    ${user.trustee1Phone}");
              await  CallNumber().callNumber('${user.trustee1Phone}');
            });
            debugPrint("volumne button ::: ");
            counter =0;
            debugPrint("counter value if equal 3 :   $counter");
          }
        }
      // do something
      // event is either VolumeButtonEvent.VOLUME_UP or VolumeButtonEvent.VOLUME_DOWN
    });
    _powerButtonSubscription = lockButtonEvents.listen((LockButtonEvent event) {
      debugPrint(event.toString());

      // do something
      // event is either VolumeButtonEvent.VOLUME_UP or VolumeButtonEvent.VOLUME_DOWN
    });
  }

  @override
  void dispose() {
    super.dispose();
    // be sure to cancel on dispose
    _volumeButtonSubscription?.cancel();
    _powerButtonSubscription?.cancel();
  }
  /*
  *void _sendSMS(String message, List<String> recipents) async {
 String _result = await FlutterSms
        .sendSMS(message: message, recipients: recipents)
        .catchError((onError) {
      print(onError);
    });
print(_result);
}
* String message = "This is a test message!";
List<String> receivers = ["1234567890", "5556787676"];
  * */

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
              InkWell(
                onTap: (){
//                  Alert(
//                    context: context,
//                    title: "choose your method",
//                    //desc: "Flutter is awesome.",
//                    content:Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: <Widget>[
//                        Container(
//                          width:50 ,
//                          height: 50,
//                          color: Colors.red,
//                        ),
//                        Container(
//                          width:50 ,
//                          height: 50,
//                          color: Colors.red,
//                        ),
//                      ],
//                    )
//                  ).show();
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
                    child: Text("Call Ambulance",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w800
                      ),
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
                onTap: () {
                  LocalData.getUser().then((user)async{
                    String _result = await FlutterSms
                        .sendSMS(message: user.emergencyMessage, recipients: [user.trustee1Phone,user.trustee2Phone])
                        .catchError((onError) {
                      print(onError);
                    });
                    print("result : : :    $_result");
                    //await  CallNumber().callNumber('${user.trustee1Phone}');
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
              InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => EditAllSetting()));
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
                    child: Text("Edit my settings",
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
