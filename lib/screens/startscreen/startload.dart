import 'package:flutter/material.dart';
import '../../loadservic.dart';
import '../../logo.dart';
import 'appbar.dart';

class StartLoad extends StatefulWidget {
  const StartLoad({Key? key}) : super(key: key);

  @override
  _StartLoadState createState() => _StartLoadState();
}

void load(BuildContext context) async {
  getSLoadString(context);
}

class _StartLoadState extends State<StartLoad> {
  @override
  void initState() {
    load(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(child: logo(context, Colors.black)),
          const Spacer(),
          const CircularProgressIndicator(
            backgroundColor: Color.fromRGBO(196, 196, 196, 0.3),
          ),
          const Spacer(),
          appbar(context),
        ],
      ),
    );
  }
}
