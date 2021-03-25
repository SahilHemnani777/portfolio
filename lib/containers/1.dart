import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/widgets/reachme.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //row1
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 100),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "SAHIL HEMNANI",
                            style: GoogleFonts.anton(
                                textStyle: TextStyle(
                              fontSize: 50,
                            )),
                          ),
                        ),
                        Center(
                          child: Text(
                            "android and flutter developer, machine learning"
                            " enthusiast \nwith 1 year of experience in developiing"
                            " mobile applications \nin flutter and java development",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        reachMe(alignment: MainAxisAlignment.spaceBetween,),
                      ],
                    ),
                  ),
                  Image.asset(
                    "images/sahil.png",
                    height: 450,
                    width: 450,
                  )
                ],
              ),
              //row2
              Text(
                "Hi, I'm Sahil! Welcome to my digital playground."
                " I'm a Flutter and Android Developer and also"
                " passionate about making open-source contributions,"
                " creating technology to elevate people, "
                "and building community. You can find me building"
                " mobile applications as an Android developer at ECGIT pvt."
                " ltd, brainstorming furious algorithms on LinkedIn, contributing"
                " to open-source projects on GitHub.\n\n"
                "Interested in Collaborating? ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              TextButton(onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Contact(),
                  ),
                      (route) => false,
                );
              },
                  child: Text("Send a message",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0, decoration: TextDecoration.underline))),
            ],
          ),
        ),
      ),
    );
  }
}
