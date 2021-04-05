// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/resume.dart';
import 'package:portfolio/widgets/main_body.dart';
import 'package:url_launcher/url_launcher.dart';

TextStyle sahilStyle = GoogleFonts.anton(
    textStyle:
        TextStyle(fontSize: 30.0, color: Color.fromRGBO(240, 172, 57, 1)));
TextStyle hemnaniSTYLE = GoogleFonts.anton(
    textStyle: TextStyle(fontSize: 30.0, color: Colors.white));

const _url = 'https://flutter.dev';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(65, 0, 0, 1),
        accentColor: Color.fromRGBO(240, 172, 57, 1),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "images/41perBG.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          elevation: 100,
          shadowColor: Theme.of(context).accentColor,
          toolbarHeight: 70,
          leading: Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0),
              child: Image.asset("images/circle_sahil.png")),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Projects(),
                      ),
                          (route) => false,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Resume',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Resume(),
                      ),
                          (route) => false,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: TextButton(
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Contact(),
                      ),
                          (route) => false,
                    );
                  },
                ),
              ),
            ),
          ],
          title: TextButton(
            onPressed: () {
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "SAHIL",
                  style: sahilStyle,
                ),
                TextSpan(text: " HEMNANI", style: hemnaniSTYLE),
              ]),
              // 'SAHIL HEMNANI',
              // style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 30.0, color: Theme.of(context).accentColor)),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Body(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Contact(),
                ),
                    (route) => false,
              );
            },
            backgroundColor: Theme.of(context).primaryColor,
            child: Image.asset("images/mail.png"),
            tooltip: "Contact Me",

          ),
        ),
      ),
    ]);
  }
}
