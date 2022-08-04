import 'package:testapp/logo.dart';
import 'package:testapp/screens/registr/accauntpred.dart';
import 'package:testapp/screens/registr/buttonregistr.dart';
import 'package:testapp/screens/registr/column.dart';
import 'package:testapp/screens/registr/divider.dart';
import 'package:testapp/screens/registr/iconzavod.dart';
import 'package:testapp/screens/registr/registrtext.dart';
import 'package:testapp/screens/registr/textfield.dart';
import 'package:testapp/screens/registr/valid.dart';
import 'package:testapp/screens/registr/zaprosreg.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/peremen.dart';
import 'package:flutter/material.dart';

class Registr extends StatefulWidget {
  Registr({Key key}) : super(key: key);

  @override
  _RegistrState createState() => _RegistrState();
}

class _RegistrState extends State<Registr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
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
            Center(
              child: Column(
                children: [
                  textfield(context, "E-mail", email, false),
                  columnvoid(context, 0.017),
                  download == false
                      ? buttonlogin(context, "Войти")
                      : CircularProgressIndicator(
                          backgroundColor: Color.fromRGBO(196, 196, 196, 0.3),
                        ),
                ],
              ),
            ),
            Spacer(),
            Spacer(),
            iconzavod(context),
            Spacer(),
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

    var validurl = "https://dynnime.000webhostapp.com/valid.php";
    var validresponse = await http.post(
      validurl,
      body: {
        "servic": email.text,
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

    if (validresponse.body == "false") {
      zaprosreg(context);
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
