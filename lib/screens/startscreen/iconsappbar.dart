import 'package:flutter/material.dart';
import 'package:testapp/screens/login/login.dart';
import 'package:testapp/screens/startscreen/screenstart/profile.dart';
import 'package:testapp/screens/startscreen/startload.dart';
import 'package:testapp/serelization/seril.dart';
import 'package:testapp/serelization/serilhistory.dart';
import 'package:testapp/screens/startscreen/screenstart/history.dart';

import '../../peremen.dart';

void loadhystory(BuildContext context) async {
  ht = await getHistoryList();
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => HistoryScreen()));
}

void load (BuildContext context) async {

  ag = await getLoadList(context);
  if (ag != null)
      Navigator.push(
      context, MaterialPageRoute(builder: (context) => Profile()));
    else
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));  
}



Widget start(BuildContext context, IconData icon) {
  return GestureDetector(
    onTap: (){Navigator.push(
      context, MaterialPageRoute(builder: (context) => StartLoad()));},
      child: Icon(icon,
        size: (MediaQuery.of(context).size.width +
                MediaQuery.of(context).size.height) *
            0.04,
        color: Colors.white),
  );
}

Widget history(BuildContext context, IconData icon) {
  return GestureDetector(
    onTap: () {
      loadhystory(context);
    },
    child: Icon(icon,
        size: (MediaQuery.of(context).size.width +
                MediaQuery.of(context).size.height) *
            0.04,
        color: Colors.white),
  );
}

Widget profile(BuildContext context, IconData icon) {
  return GestureDetector(
    onTap: (){
      load(context);
    },
      child: Icon(icon,
        size: (MediaQuery.of(context).size.width +
                MediaQuery.of(context).size.height) *
            0.04,
        color: Colors.white),
  );
}
