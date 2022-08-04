// ignore_for_file: import_of_legacy_library_into_null_safe, avoid_print

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/screens/startscreen/startload.dart';

import '../peremen.dart';

String cut(String coment) {
  var res = "";
  coment = coment + " ";
  for (int i = 0; i < coment.length; i++) {
    try {
      if (coment[i] != " ") {
        if (coment[i + 1] == " ") {
          res = res + coment[i] + coment[i + 1];
        } else {
          res = res + coment[i];
        }
        print(res);
      }
    } catch (e) {
      break;
    }
  }
  if (res != "") {
    res = res.substring(0, res.length - 1);
  }
  return res;
}

Future getCreatHistory(
    BuildContext context, String client, var summ, String coment) async {
  String url = "https://dynnime.000webhostapp.com/historycreat.php";
  print(url);
  if (summ <= 0 || summ > double.parse(ag!.schet)) return;
  print("Подключение к серверу...");

  var response = await http.post(
    url,
    body: {
      "id": ag!.id.toString(),
      "id_client": client.trim(),
      "summ": summ.toStringAsFixed(2),
      "coment": cut(coment).trim(),
    },
  );
  if (response.body == "true") {
    print("Удачно");
  } else {
    print("Ошибка");
  }
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const StartLoad()));
}
