import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/peremen.dart';
import 'package:testapp/screens/login/login.dart';

import '../loadservic.dart';

class Load {
  String servic;
  String password;
  int id;
  String name;
  String namefam;
  String otchestvo;
  var schet;
  int root;
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
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }
}
