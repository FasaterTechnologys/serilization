import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../peremen.dart';

class HistoryList {
  List<History> txs;
  HistoryList({this.txs});

  factory HistoryList.fromJson(List json) {
    print("Сортировка данных...");
    List<History> txsList = json.map((i) => History.fromJson(i)).toList();
    print("Успешно!");
    return HistoryList(txs: txsList);
  }
}

class History {
  String id;
  String coment;
  String id_client;
  var summ;
  History({
    this.id,
    this.coment,
    this.id_client,
    this.summ,
  });
  factory History.fromJson(Map<String, dynamic> json) {
    return History(
      id: json["id"] as String,
      coment: json["coment"] as String,
      id_client: json["id_client"] as String,
      summ: json["summ"],
    );
  }
}

Future<HistoryList> getHistoryList() async {
  String url = "https://dynnime.000webhostapp.com/history.php";
  print(url);
  print("Подключение к серверу...");
  var response = await http.post(
    url,
    body: {
      "id": ag.id.toString(),
    },
  );
  var txsAdress = json.decode(response.body);

  if (response.statusCode == 200 && txsAdress["list"] != null) {
    return HistoryList.fromJson(txsAdress["list"]);
  } else {}
}
