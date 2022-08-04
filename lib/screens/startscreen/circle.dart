import 'package:flutter/material.dart';

Widget circle(
  BuildContext context,
  String hint,
  IconData icon,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text(
          hint,
          style: TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.13,
        height: MediaQuery.of(context).size.width * 0.13,
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
    ],
  );
}
