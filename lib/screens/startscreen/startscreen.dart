import 'package:flutter/material.dart';
import 'package:testapp/logo.dart';
import 'package:testapp/peremen.dart';
import 'package:testapp/screens/startscreen/appbar.dart';
import 'package:testapp/screens/startscreen/container.dart';
import 'package:testapp/convert.dart';
import 'package:testapp/serelization/seril.dart';
import 'package:testapp/serelization/serilhistory.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}




class _StartScreenState extends State<StartScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          logo(context, Colors.black),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          
          Text(
            "ID: "+ag.id.toString(),
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          
          container(context),
          Spacer(),
          appbar(context),
        ],
      ),
    );
  }
}
