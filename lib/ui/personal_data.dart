import 'package:flutter/material.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/trustee.dart';
class PersonalData extends StatefulWidget {
  @override
  _PersonalDataState createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
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

                  Text("Name:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 2
                    ),
                  ),
                  TextFormField(
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
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: SOSColors.greenLight,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    ),
                  ),
                  Text("Password:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 2
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    autocorrect: false,
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
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => Trustee()));
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
