import 'package:flutter/material.dart';
import 'package:testapp/serelization/seril.dart';
import 'package:testapp/serelization/serilhistory.dart';

bool download = false;
TextEditingController email = TextEditingController();
TextEditingController name1 = TextEditingController();
TextEditingController name2 = TextEditingController();
TextEditingController name3 = TextEditingController();
TextEditingController pass = TextEditingController();
Load? ag;
String text1 = "";
bool validation = true;
bool proverka = false;
BoxShadow shadow = BoxShadow(
  color: Colors.grey.withOpacity(0.5),
  spreadRadius: 1,
  blurRadius: 7,
  offset: const Offset(0, 3), // changes position of shadow
);
HistoryList? ht;
String? password;
String? servic;
