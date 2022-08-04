import 'package:flutter/material.dart';

Widget img(BuildContext context) {
  return SizedBox.expand(
    child: Image.asset(
      'assets/backgroungimage.png',
      fit: BoxFit.fill,
    ),
  );
}
