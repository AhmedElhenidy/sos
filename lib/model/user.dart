import 'package:shared_preferences/shared_preferences.dart';
class User {
  String name;
  String phone;
  String age;
  String bloodType;
  String city;
  String trustee1Name ;
  String trustee1Phone ;
  String trustee2Name ;
  String trustee2Phone ;
  String emergencyMessage ;
  User({this.name,this.phone,this.age,this.bloodType,this.city,this.emergencyMessage,
    this.trustee1Name,this.trustee1Phone,this.trustee2Name,this.trustee2Phone});
}

//local storage functions
class LocalData{
  static Future<bool> logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear() ;
    return true ;
  }
  static Future<bool> saveUser(User user) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("name", user.name);
      await prefs.setString("phone", user.phone);
      await prefs.setString("trustee2Phone", user.trustee2Phone);
      await prefs.setString("trustee2Name", user.trustee2Name);
      await prefs.setString("trustee1Phone", user.trustee1Phone);
      await prefs.setString("trustee1Name", user.trustee1Name);
      await prefs.setString("emergencyMessage", user.emergencyMessage);
      await prefs.setString("city", user.city);
      await prefs.setString("bloodType", user.bloodType);
      await prefs.setString("age", user.age);
      return true ;
    }catch(Exception){
      print("save to shared faild   :  $Exception");
      return false ;
    }
  }
  static Future< User > getUser () async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return new User(
        name: prefs.getString("name"),
        phone:  prefs.getString("phone"),
        age:  prefs.getString("age"),
        bloodType: prefs.getString("bloodType"),
        city: prefs.getString("city"),
        emergencyMessage:prefs.getString("emergencyMessage") ,
        trustee1Name:prefs.getString("trustee1Name") ,
        trustee1Phone:prefs.getString("trustee1Phone") ,
        trustee2Name: prefs.getString("trustee2Name"),
        trustee2Phone:prefs.getString("trustee2Phone")
    );
  }
}
