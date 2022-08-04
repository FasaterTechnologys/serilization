import 'package:testapp/peremen.dart';
import 'package:flutter/material.dart';

Widget valid() {
  String text = "Ошибка";
  if (name1.text.isEmpty ||
      email.text.isEmpty ||
      pass.text.isEmpty ||
      name3.text.isEmpty ||
      name2.text.isEmpty ||
      text1 == "true") {
    validation = false;
    if (name1.text.isEmpty) {
      text = "Слишком короткое имя";
    } else if (email.text.trim().length < 10) {
      text = "Слишком короткий логин";
    } else if (pass.text.trim().length < 8) {
      text = "Слишком короткий пароль";
    } else if (name3.text.trim().length < 5) {
      text = "Слишком короткая фамилия";
    } else if (name2.text.trim().length < 5) {
      text = "Слишком короткое отчество";
    } else if (text1 == "true") {
      text = "Пользователь с таким логином уже существует";
    }
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(173, 2, 5, 1),
      ),
    );
  } else {
    validation = true;
    return const SizedBox();
  }
}
