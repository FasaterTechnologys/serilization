// ignore_for_file: import_of_legacy_library_into_null_safe, unused_local_variable

import 'package:flutter/material.dart';
import 'package:testapp/peremen.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/screens/login/login.dart';

void zaprosreg(BuildContext context) async {
  var url = "http://dynnime.000webhostapp.com/creat.php";
  var response = await http.post(
    url,
    body: {
      "name": name3.text.trim(),
      "servic": email.text.trim(),
      "password": pass.text.trim(),
      "namefam": name1.text.trim(),
      "otchestvo": name2.text.trim(),
    },
  );
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const Login()));
}
