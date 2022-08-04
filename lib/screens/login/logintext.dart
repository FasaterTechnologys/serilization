import 'package:flutter/material.dart';

Widget registrtext(BuildContext context){
  return Container(
   
    alignment: Alignment.bottomCenter,
    height: (MediaQuery.of(context).size.width + MediaQuery.of(context).size.height) * 0.043,
    child: Text("Авторизация",
        style: TextStyle(
            color: Colors.white,
            fontSize:  (MediaQuery.of(context).size.width + MediaQuery.of(context).size.height) * 0.04,
            fontWeight: FontWeight.w300,
            fontFamily: "Montserrat")),
  );
}
