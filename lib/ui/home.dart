import 'package:flutter/material.dart';
import 'package:sos/statics/colors.dart';
import 'package:sos/ui/personal_data.dart';
import 'package:sos/ui/sign_in.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SOSColors.backGround,
      body: Container(
        padding: EdgeInsets.only(left:32,right: 32,top: 16,bottom: 16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SignIn()));
              },
              child: Container(
                padding: EdgeInsets.only(top: 8),
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/container.png'),
                    fit: BoxFit.cover,
                  )
                ),
                child: Center(
                  child: Text("Sign In",
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
              height: 30,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => PersonalData()));
              },
              child: Container(
                padding: EdgeInsets.only(top: 8),
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/container.png'),
                      fit: BoxFit.cover,
                    )
                ),
                child: Center(
                  child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
