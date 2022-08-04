import 'package:flutter/material.dart';

Widget divider(BuildContext context) {
  return Container(
    alignment: Alignment.topCenter,
    width: MediaQuery.of(context).size.width *
        100 /
        MediaQuery.of(context).size.width,
    child: const Divider(
      height: 0.001,
      thickness: 3,
      color: Colors.white,
    ),
  );
}
