import 'package:flutter/material.dart';

Widget textfield(BuildContext context, String hint,
    TextEditingController controller, bool obsec) {
  return Container(
    decoration: BoxDecoration(
        color: const Color.fromRGBO(196, 196, 196, 0.3),
        borderRadius: BorderRadius.circular(35)),
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.06,
    child: TextField(
      obscureText: obsec,
      controller: controller,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: (MediaQuery.of(context).size.width +
                MediaQuery.of(context).size.height) *
            0.02,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintStyle: TextStyle(
          fontSize: (MediaQuery.of(context).size.width +
                  MediaQuery.of(context).size.height) *
              0.02,
          color: const Color.fromRGBO(153, 155, 158, 1),
        ),
        hintText: hint,
      ),
    ),
  );
}
