import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/yes_condition.dart';
class EditAllSetting extends StatefulWidget {
  @override
  _EditAllSettingState createState() => _EditAllSettingState();
}

class _EditAllSettingState extends State<EditAllSetting> {
  User user;
  final _formKey = GlobalKey<FormState>();
  TextEditingController name ;
  TextEditingController phone ;
  TextEditingController age ;
  TextEditingController bloodType ;
  TextEditingController city ;
  TextEditingController name1 ;
  TextEditingController name2 ;
  TextEditingController phone1 ;
  TextEditingController phone2 ;
  TextEditingController message ;
  bool check=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LocalData.getUser().then((user){
      this.user=user;
      name =TextEditingController(text: user.name);
      phone =TextEditingController(text: user.phone);
      age =TextEditingController(text: user.age);
      bloodType =TextEditingController(text: user.bloodType);
      city =TextEditingController(text: user.city);
      name1 =TextEditingController(text: user.trustee1Name);
      phone1 =TextEditingController(text: user.trustee1Phone);
      name2 =TextEditingController(text: user.trustee2Name);
      phone2 =TextEditingController(text: user.trustee2Phone);
      message =TextEditingController(text: user.emergencyMessage);
      setState(() {
        check = user.alert==1?true :false;
      });

      print("user : : : ${user.name}");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left:16,right: 16,top: 54,bottom: 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                      child: Text("Personal Data",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ),
                Text("Name:*",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: name,
                  validator: (val){
                    if(val.isEmpty){
                      return "this field is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                Text("Phone:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: phone,
                  validator: (val){
                    if(val.isEmpty){
                      return "this field is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                Text("Age:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: age,
                  validator: (val){
                    if(val.isEmpty){
                      return "this field is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                Text("Blood Type:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: bloodType,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                Text("City:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: city,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

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
                      child: Text("Edit Trustees",
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
                Center(
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: SOSColors.greenDark,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        )
                    ),
                    child: Text('Trustee1:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:FontWeight.w600 ,
                          height: 2
                      ),
                    ),
                  ),
                ),
                Text("Name:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: name1,
                  validator: (val){
                    if(val.isEmpty){
                      return "this field is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                Text("Phone Number:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: phone1,
                  validator: (val){
                    if(val.isEmpty){
                      return "this field is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: SOSColors.greenDark,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        )
                    ),
                    child: Text('Trustee2:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:FontWeight.w600 ,
                          height: 2
                      ),
                    ),
                  ),
                ),
                Text("Name:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: name2,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                Text("Phone Number:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 2
                  ),
                ),
                TextFormField(
                  controller: phone2,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: SOSColors.greenLight,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
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
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () async{
                      if(_formKey.currentState.validate()){
                        user.name=name.text;
                        user.phone=phone.text;
                        user.age=age.text;
                        user.bloodType=bloodType.text;
                        user.city=city.text;
                        user.trustee1Name=name1.text;
                        user.trustee1Phone=phone1.text;
                        user.trustee2Name=name2.text;
                        user.trustee2Phone=phone2.text;
                        user.emergencyMessage=message.text;
                        user.alert=check?1:0;
                        LocalData.saveUser(user).then((bol){
                          print("user saved success  : :: ");
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => YesCondition()));
                        });
                      }

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: SOSColors.greenDark,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      padding: EdgeInsets.all(6),
                      width: 120,
                      height: 45,

                      child: Text('Next',
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
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
