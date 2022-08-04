import 'package:flutter/material.dart';
import 'package:testapp/screens/startscreen/iconsappbar.dart';

Widget appbar(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.06,
    color: Colors.grey,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        start(context, Icons.menu_book),
        history(context, Icons.list_alt),
        profile(context, Icons.supervised_user_circle_sharp),
      ],
    ),
  );
}
