import 'package:testapp/peremen.dart';
import 'package:flutter/material.dart';

Widget valid() {
  String text = "Ошибка";
  if (email.text.isEmpty || pass.text.isEmpty || text1 == "false") {
    validation = false;
    if (email.text.trim().isEmpty) {
      text = "Слишком короткий логин";
    } else if (pass.text.trim().isEmpty) {
      text = "Слишком короткий пароль";
    } else if (text1 == "false") {
      text = "Такого аккаунта не существует";
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
