import 'package:testapp/peremen.dart';
import 'package:flutter/material.dart';

Widget valid() {
  String text = "Ошибка";
  if (name1.text.length<= 0 ||
      email.text.length <= 0 ||
      pass.text.length <= 0 ||
      name3.text.length<= 0 ||
      name2.text.length <= 0 ||
      text1 == "true") {
    validation = false;
    if (name1.text.length < 1)
      text = "Слишком короткое имя";
    else if (email.text.trim().length < 10)
      text = "Слишком короткий логин";
    else if (pass.text.trim().length < 8)
      text = "Слишком короткий пароль";
    else if (name3.text.trim().length < 5)
      text = "Слишком короткая фамилия";
    else if (name2.text.trim().length < 5)
      text = "Слишком короткое отчество";
    else if (text1 == "true") {
      text = "Пользователь с таким логином уже существует";
    }
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Color.fromRGBO(173, 2, 5, 1),
      ),
    );
  } else {
    validation = true;
    return SizedBox();
  }
}
