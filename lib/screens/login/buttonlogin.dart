import 'package:flutter/material.dart';

Widget buttonLogin(BuildContext context, String hint) {
  return Container(
    decoration: BoxDecoration(
      gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            Color.fromRGBO(20, 18, 103, 1),
            Color.fromRGBO(55, 51, 217, 1),
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
  );
}
