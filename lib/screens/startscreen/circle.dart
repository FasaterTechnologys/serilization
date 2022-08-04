import 'package:flutter/material.dart';
import 'package:testapp/screens/startscreen/perevodscreen.dart';

Widget circle(
  BuildContext context,
  String hint,
  IconData icon,
  String i,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text(
          hint,
          style: const TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      GestureDetector(
        onTap: () {
          if (i == "1") {
          } else if (i == "2") {
          } else if (i == "3") {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PerevodeScreen()));
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(360),
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 6,
              )
            ],
          ),
          child: Center(child: Icon(icon, size: 30)),
        ),
      ),
    ],
  );
}
