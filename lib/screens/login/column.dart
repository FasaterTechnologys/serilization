import 'package:testapp/peremen.dart';
import 'package:testapp/screens/login/textfield.dart';
import 'package:testapp/screens/login/valid.dart';
import 'package:flutter/material.dart';

Widget columnvoid(BuildContext context, double height) {
  return Column(
    children: [
      textfield(context, "E-mail", email, false, Colors.white),
      SizedBox(
        height: MediaQuery.of(context).size.height * height,
      ),
      textfield(context, "Пароль", pass, true, Colors.white),
      SizedBox(
        height: MediaQuery.of(context).size.height * height / 2,
      ),
      proverka == true ? valid() : const SizedBox(),
      SizedBox(
        height: MediaQuery.of(context).size.height * height / 2,
      ),
    ],
  );
}
