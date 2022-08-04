import 'package:testapp/peremen.dart';
import 'package:flutter/material.dart';

Widget valid() {
  String text = "Ошибка";
  if (email.text.length <= 0 ||
      pass.text.length <= 0 ||
      text1 == "false") {
    validation = false;
    if (email.text.trim().length <= 0)
      text = "Слишком короткий логин";
    else if (pass.text.trim().length <= 0)
      text = "Слишком короткий пароль";
    else if (text1 == "false") {
      text = "Такого аккаунта не существует";
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
