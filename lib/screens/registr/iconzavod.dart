import 'package:flutter/material.dart';

Widget iconzavod(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width *
        80 /
        MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.width *
        80 /
        MediaQuery.of(context).size.width,
    child: Image.asset(
      'assets/zavod.png',
    ),
  );
}
