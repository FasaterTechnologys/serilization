import 'package:testapp/screens/login/accauntpred.dart';
import 'package:testapp/screens/login/buttonlogin.dart';
import 'package:testapp/screens/login/column.dart';
import 'package:testapp/screens/login/divider.dart';
import 'package:testapp/screens/login/iconzavod.dart';
import 'package:testapp/logo.dart';
import 'package:testapp/screens/login/logintext.dart';
import 'package:testapp/screens/login/valid.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'package:testapp/peremen.dart';
import 'package:flutter/material.dart';
import 'package:testapp/screens/startscreen/startload.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _RegistrState createState() => _RegistrState();
}

void addLoadToSF(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  prefs.setString('password', pass.text);
  prefs.setString('servic', email.text);
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const StartLoad()));
}

class _RegistrState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgroungimage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logo(context, Colors.white),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            divider(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.014,
            ),
            registrtext(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            const Spacer(),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  columnvoid(context, 0.017),
                  download == false
                      ? buttonlogin(context, "Войти")
                      : const CircularProgressIndicator(
                          backgroundColor: Color.fromRGBO(196, 196, 196, 0.3),
                        ),
                ],
              ),
            ),
            const Spacer(),
            const Spacer(),
            iconzavod(context),
            const Spacer(),
            accpred(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }

  Future register() async {
    setState(() {});
    download = true;
    proverka = true;

    var validurl = "https://dynnime.000webhostapp.com/login.php";
    var validresponse = await http.post(
      validurl,
      body: {
        "servic": email.text,
        "pass": pass.text,
      },
    );
    text1 = validresponse.body;
    valid();
    if (validation == false) {
      download = false;
      setState(() {});
      return;
    }
    setState(() {});

    if (validresponse.body == "true") {
      addLoadToSF(context);

      download = false;
      setState(() {});
    } else {
      download = false;
      setState(() {});
    }
  }

  Widget buttonlogin(BuildContext context, String hint) {
    return GestureDetector(
      onTap: () {
        register();
      },
      child: buttonLogin(context, hint),
    );
  }
}
