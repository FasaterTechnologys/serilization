import 'package:flutter/material.dart';
import 'package:testapp/screens/login/login.dart';

Widget accpred(BuildContext context) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Уже есть аккаунт?",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: "Montserrat")),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Text("Войти",
              style: TextStyle(
                  color: Color.fromRGBO(62, 76, 200, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat")),
        ),
      ],
    ),
  );
}
