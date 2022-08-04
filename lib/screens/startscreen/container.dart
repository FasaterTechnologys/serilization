import 'package:flutter/material.dart';
import 'package:testapp/screens/startscreen/addmoney.dart';
import 'package:testapp/screens/startscreen/circle.dart';
import 'package:testapp/convert.dart';

import '../../peremen.dart';

Widget container(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    child: Stack(
      children: [
        Image.asset(
          'assets/bar.png',
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.02,
                  left: MediaQuery.of(context).size.width * 0.04),
              child: Container(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Счет банка:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        toSpaceSeparatedString(ag!.schet.toString()) + " ₽",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    circle(context, "Пополнить", Icons.add, "1"),
                    circle(context, "Виртуальная оплата", Icons.payments, "2"),
                    circle(context, "Вывести", Icons.payment_outlined, "3"),
                  ],
                ))
          ],
        ),
      ],
    ),
  );
}
