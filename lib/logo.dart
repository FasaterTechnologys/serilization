import 'package:flutter/material.dart';

Widget logo(BuildContext context, Color color) {
  return Column(
    children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      Text(
        "F A S A T E R",
        style: TextStyle(
            color: color,
            fontSize: (MediaQuery.of(context).size.width +
                    MediaQuery.of(context).size.height) *
                0.043,
            fontWeight: FontWeight.w700),
      ),
    ],
  );
}
