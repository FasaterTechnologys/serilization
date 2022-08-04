import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testapp/peremen.dart';
import 'package:testapp/screens/login/login.dart';
import 'package:testapp/screens/startscreen/startscreen.dart';
import 'package:testapp/serelization/seril.dart';

getSLoadString(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  if (prefs.getString('password') != null &&
      prefs.getString('servic') != null) {
    String stringValue1 = prefs.getString('password');
    password = stringValue1;
    String stringValue = prefs.getString('servic');
    servic = stringValue;
    pass.text = password;
    email.text = servic;
    ag = await getLoadList(context);
    if (ag != null)
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StartScreen()));
    else
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  } else {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
}
