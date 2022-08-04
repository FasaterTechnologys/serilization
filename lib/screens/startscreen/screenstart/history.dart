import 'package:flutter/material.dart';
import 'package:testapp/convert.dart';

import '../../../logo.dart';
import '../../../peremen.dart';
import '../appbar.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

Color color(String id){
  Color cl = Colors.green;
  if(id == ag.id.toString()){
    cl = Colors.red;
  }
  return cl;
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          logo(context, Colors.black),
          Text(
            "Сумма / Айди клиента    |    ID / коментарий",
            style: TextStyle(fontSize: 15),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.80,
            child: ListView.builder(
              itemCount: ht.txs.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.03),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 6,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.018),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    toSpaceSeparatedString(
                                          ht.txs[ht.txs.length - index - 1].summ.toString(),
                                        ) +
                                        " ₽",
                                    style: TextStyle(
                                        color: color(ht.txs[ht.txs.length- index - 1].id.toString()),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Text(
                                ht.txs[ht.txs.length - index - 1].id_client.toString(),
                                style: TextStyle(
                                        color: color(ht.txs[ht.txs.length- index - 1].id.toString()),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                ht.txs[ht.txs.length - index - 1].id.toString(),
                                style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              ),
                              Text(
                                ht.txs[ht.txs.length - index - 1].coment.toString(),
                                style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Spacer(),
          appbar(context),
        ],
      ),
    );
  }
}
