import 'package:testapp/peremen.dart';
import 'package:testapp/screens/registr/textfield.dart';
import 'package:testapp/screens/registr/valid.dart';
import 'package:flutter/material.dart';

Widget columnvoid(BuildContext context, double height) {
  return Column(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height * height,
      ),
      textfield(context, "Фамилия", name1, false),
      SizedBox(
        height: MediaQuery.of(context).size.height * height,
      ),
      textfield(context, "Имя", name3, false),
      SizedBox(
        height: MediaQuery.of(context).size.height * height,
      ),
      textfield(context, "Отчество", name2, false),
      SizedBox(
        height: MediaQuery.of(context).size.height * height,
      ),
      textfield(context, "Пароль", pass, true),
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
