import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WSP Clone",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: new Color(0xff075E55),
        accentColor: new Color(0xff00CC3F),
      ),
      home: new WhatsappHome(),
    );
  }
}
