// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_typing_uninitialized_variables, avoid_print, duplicate_ignore

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/peremen.dart';
import 'package:testapp/screens/login/login.dart';

class Load {
  var servic;
  var password;
  var id;
  var name;
  var namefam;
  var otchestvo;
  var schet;
  var root;
  Load({
    this.servic,
    this.password,
    this.id,
    this.name,
    this.namefam,
    this.otchestvo,
    this.schet,
    this.root,
  });
  factory Load.fromJson(Map<String, dynamic> json) {
    // ignore: avoid_print
    print("Упешная обработка!");

    return Load(
      servic: json['servic'],
      password: json['password'],
      id: json['id'] as int,
      name: json['name'],
      namefam: json['namefam'],
      otchestvo: json['otchestvo'],
      schet: json['schet'].toStringAsFixed(2),
      root: json['root'] as int,
    );
  }
}

Future<Load> getLoadList(BuildContext context) async {
  String url = "https://dynnime.000webhostapp.com/load.php";
  print(url);
  print("Подключение к серверу...");
  var response = await http.post(
    url,
    body: {
      "servic": servic,
      "pass": password,
    },
  );
  var jsonAdress = json.decode(response.body);
  if (response.statusCode == 200 && jsonAdress != false) {
    return Load.fromJson(jsonAdress);
  } else {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
    return Load.fromJson(jsonAdress);
  }
}
