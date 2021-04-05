import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/resume.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';
import '../main.dart';


launchMailto(String email, String msg, String name, String org) async {
  final mailtoLink = Mailto(
    to: ['hemnanisahil777@gmail.com'],
    subject: "portfolio-msg",
    body: 'Name: $name\nOrganisation: $org\nEmail: $email\nMessage: $msg',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

const _urlGITHUB = 'https://github.com/SahilHemnani777';

void _openGitHub() async => await canLaunch(_urlGITHUB)
    ? await launch(_urlGITHUB)
    : throw 'Could not launch $_urlGITHUB';

const _urlLINKEDIN = 'https://www.linkedin.com/in/sahil-hemnani-8084b41a6/';

void _openLinkedIn() async => await canLaunch(_urlLINKEDIN)
    ? await launch(_urlLINKEDIN)
    : throw 'Could not launch $_urlLINKEDIN';

const _urlTWITTER = 'https://twitter.com/sahil_hemnani';

void _openTwitter() async => await canLaunch(_urlTWITTER)
    ? await launch(_urlTWITTER)
    : throw 'Could not launch $_urlTWITTER';

const _urlMEDIUM = 'https://medium.com/@hemnanisahil777';

void _openMedium() async => await canLaunch(_urlMEDIUM)
    ? await launch(_urlMEDIUM)
    : throw 'Could not launch $_urlMEDIUM';

final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hemnanisahil777@gmail.com',
    queryParameters: {'subject': 'Feel free to mail me anytime!'});

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final myNameController = TextEditingController();
  final myCompanyController = TextEditingController();
  final myEmailController= TextEditingController();
  final myMessageController= TextEditingController();

  @override
  void dispose() {
    myNameController.dispose();
    myCompanyController.dispose();
    myEmailController.dispose();
    myMessageController.dispose();
    super.dispose();
  }

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
                  onPressed: () {},
                ),
              ),
            ),
          ],
          title: TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen(),
                ),
                    (route) => false,
              );
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
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        iconSize: 50.0,
                        hoverColor: Colors.blue,
                        icon: Image.asset(
                          "images/linkedIn.png",
                          color: Colors.black,
                        ),
                        onPressed: () => _openLinkedIn()),
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                        iconSize: 50.0,
                        hoverColor: Colors.black45,
                        icon: Image.asset(
                          "images/github.png",
                        ),
                        onPressed: () => _openGitHub()),
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                        iconSize: 50.0,
                        hoverColor: Colors.blue,
                        icon: Image.asset(
                          "images/twitter.png",
                          color: Colors.black,
                        ),
                        onPressed: () => _openTwitter()),
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                        iconSize: 52.0,
                        hoverColor: Colors.grey,
                        icon: Image.asset(
                          "images/medium.png",
                        ),
                        onPressed: () => _openMedium()),
                    SizedBox(
                      height: 30,
                    ),
                    IconButton(
                        iconSize: 55.0,
                        hoverColor: Colors.red,
                        icon: Image.asset("images/mail.png"),
                        onPressed: () => launch(_emailLaunchUri.toString())),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Hello there,",
                            style: GoogleFonts.anton(
                                textStyle: TextStyle(fontSize: 35.0))),
                      ],
                    ),
                    Text(
                      "If you're looking to get in touch "
                      "with me you're in the right place! The best way "
                      "to get in touch with me is to fill out the form below.",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(fontSize: 20.0)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Name*",
                          style: GoogleFonts.anton(
                              textStyle: TextStyle(fontSize: 20.0)),
                        ),
                      ],
                    ),
                    TextField(
                      controller: myNameController,
                        decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Elon Musk",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Organization/Company*",
                          style: GoogleFonts.anton(
                              textStyle: TextStyle(fontSize: 20.0)),
                        ),
                      ],
                    ),
                    TextField(
                      controller: myCompanyController,
                        decoration: InputDecoration(
                      labelText: "Organization/Company",
                      hintText: "Tesla",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email Address*",
                          style: GoogleFonts.anton(
                              textStyle: TextStyle(fontSize: 20.0)),
                        ),
                      ],
                    ),
                    TextField(
                        controller: myEmailController,
                        decoration: InputDecoration(
                      labelText: "Email Address",
                      hintText: "emusk@tesla.com",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Message*",
                          style: GoogleFonts.anton(
                              textStyle: TextStyle(fontSize: 20.0)),
                        ),
                      ],
                    ),
                    TextField(
                      controller: myMessageController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "feel free to contact",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "I'll try to contact you asap!",
                        style: GoogleFonts.kalam(
                            textStyle: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                    Center(
                        child: Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.black),
                                color: Theme.of(context).accentColor,

                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: TextButton(
                                onPressed: () {
                                  launchMailto(myEmailController.text, myMessageController.text, myNameController.text, myCompanyController.text);
                                }, child: Text("Send", style: TextStyle(fontSize: 20.0, color: Colors.white),))))
                  ],
                )),
          ],
        ),
      ),
    ]);
  }
}
