import 'package:flutter/material.dart';
import 'package:testapp/screens/login/login.dart';
import 'package:testapp/screens/login/textfield.dart';
import 'package:testapp/serelization/historycreat.dart';
import 'package:testapp/serelization/seril.dart';
import 'package:testapp/serelization/seril.dart';

import '../../loadservic.dart';
import '../../logo.dart';
import '../../peremen.dart';

class PerevodeScreen extends StatefulWidget {
  PerevodeScreen({Key key}) : super(key: key);

  @override
  _PerevodeScreenState createState() => _PerevodeScreenState();
}

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();
TextEditingController controller3 = TextEditingController();

void load(BuildContext context) async {
  ag = await getLoadList(context);
  if (ag != null)
    getCreatHistory(context, controller1.text, double.parse(controller2.text),
        controller3.text);
  else
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
}

class _PerevodeScreenState extends State<PerevodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          logo(context, Colors.black),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Center(
                child:
                    textfield(context, "id", controller1, false, Colors.black)),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Center(
                child: textfield(
                    context, "Сумма", controller2, false, Colors.black)),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Center(
                child: textfield(
                    context, "Коментарий", controller3, false, Colors.black)),
          ),
          buttonPerevode(context, "Перевод"),
          Spacer(),
        ],
      ),
    );
  }
}

Widget buttonPerevode(BuildContext context, String hint) {
  return GestureDetector(
    onTap: () {
      load(context);
    },
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(20, 50, 50, 1),
              Color.fromRGBO(55, 80, 150, 1),
            ]),
        borderRadius: BorderRadius.circular(35),
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Align(
        child: Text(hint,
            style: TextStyle(
                color: Colors.white,
                fontSize: (MediaQuery.of(context).size.width +
                        MediaQuery.of(context).size.height) *
                    0.03,
                fontWeight: FontWeight.w300,
                fontFamily: "Montserrat")),
      ),
    ),
  );
}
