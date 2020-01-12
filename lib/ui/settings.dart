import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/app_home.dart';
class AdjustSettings extends StatefulWidget {
  User user ;
  AdjustSettings(this.user);
  @override
  _AdjustSettingsState createState() => _AdjustSettingsState();
}
class _AdjustSettingsState extends State<AdjustSettings> {
  TextEditingController message =TextEditingController();
  bool check=false;
  User user ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.user=widget.user;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: SOSColors.backGround,
      body: Padding(
        padding: const EdgeInsets.only(top:54.0),
        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16,bottom: 32,top: 0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 8),
                  width: 250,
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/container2.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                  child: Center(
                    child: Text("Adjust Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
             InkWell(
               onTap: (){
                 setState(() {
                   check=!check;
                 });
               },
               child: Row(
                 children: <Widget>[
                   Transform.scale(
                     scale: 1.5,
                     child: Checkbox(
                       activeColor: SOSColors.greenDark,
                       value: check,
                       onChanged: (bool){
                         setState(() {
                           check=bool;
                         });
                       },
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 8),
                     width: 280,
                     height: 30,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       border: Border.all(
                         width: 1,
                       )
                     ),
                     child: Center(
                       child: Text("Send an alert on Volume button press",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
              Center(
                child: Container(
                  width: 250,
                  child: Center(
                    child: Text('For 3 quick presses: an emergency message containing your location and an emergency text will be sent',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Type your emergency message:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 2
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 40,
                child: TextField(
                  controller: message,
                  decoration: InputDecoration(
                    hintText: 'Ex: “I’m in danger, HELP ME!”',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: (){
                    user.alert=check?1:0;
                    user.emergencyMessage =message.text.isEmpty?"help I`m in danger":message.text;
                    LocalData.saveUser(user).then((bol){
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => AppHome()));
                    });

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: SOSColors.greenDark,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    padding: EdgeInsets.all(6),
                    width: 120,
                    height: 40,

                    child: Text('Finish',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
