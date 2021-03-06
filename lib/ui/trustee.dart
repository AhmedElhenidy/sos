import 'package:flutter/material.dart';
import 'package:sos/model/user.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/settings.dart';
class Trustee extends StatefulWidget {
  User user;
  Trustee(this.user);
  @override
  _TrusteeState createState() => _TrusteeState();
}

class _TrusteeState extends State<Trustee> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name =TextEditingController();
  TextEditingController name2 =TextEditingController();
  TextEditingController phone =TextEditingController();
  TextEditingController phone2 =TextEditingController();
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
      backgroundColor: SOSColors.backGround,
      body: Padding(
        padding: const EdgeInsets.only(top:54.0),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 16,right: 16,bottom: 32,top: 0),
            width: MediaQuery.of(context).size.width,
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
                        child: Text("Creating Trustees",
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
                  Text("Phone Number:",
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: (){
                        if(_formKey.currentState.validate()){
                          user.trustee1Name=name.text;
                          user.trustee1Phone=phone.text;
                          user.trustee2Name=name2.text;
                          user.trustee2Phone=phone2.text;
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => AdjustSettings(this.user)));
                        }

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: SOSColors.greenDark,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        padding: EdgeInsets.all(6),
                        width: 120,
                        height: 40,

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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
