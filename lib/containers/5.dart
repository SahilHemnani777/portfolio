import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const _urlrahul = 'https://github.com/rahul-badgujar';

void _openRahulGitHub() async => await canLaunch(_urlrahul)
    ? await launch(_urlrahul)
    : throw 'Could not launch $_urlrahul';

const _urlrahul2 = 'https://rahul-badgujar-portfolio.web.app/#/';

void _openRahulPortfolio() async => await canLaunch(_urlrahul2)
    ? await launch(_urlrahul2)
    : throw 'Could not launch $_urlrahul2';

const _urlrahul3 = 'https://www.linkedin.com/in/rahulbadgujar/';

void _openRahulLinkedIn() async => await canLaunch(_urlrahul3)
    ? await launch(_urlrahul3)
    : throw 'Could not launch $_urlrahul3';

class Five extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.75,
        padding: EdgeInsets.only(top: 30.0, left: 10, right: 10, bottom: 30.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Recommendations",
                style: GoogleFonts.anton(
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset("images/rahul.png"),
                                radius: 30.0,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "Rahul Badgujar\n (Classmate)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        icon: Image.asset("images/github.png"),
                                        onPressed: () {
                                          _openRahulGitHub();
                                        }),
                                    IconButton(
                                      icon: Image.asset("images/portfolio.png"),
                                      onPressed: () {
                                        _openRahulPortfolio();
                                      },
                                      iconSize: 30.0,
                                    ),
                                    IconButton(
                                        icon:
                                            Image.asset("images/linkedin.png"),
                                        onPressed: () {
                                          _openRahulLinkedIn();
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "We are working together on some projects and Sahil"
                                " is one of the best \npeople to have in the team. I highly recommend"
                                " him as an Android Developer, \nas he is quite good at it"
                                " and his learning pace is really appreciable.\n"
                                "The key factor one can look into Sahil is his dedication"
                                "towards his work \nand learning. And that dedication is very"
                                "helpful in keeping the morale and \nenthusiasm of the team always up."
                                "He is very good at planning things \nand working hard to accomplish them"
                                ". He is a focused person towards his \ngoals and his clear vision"
                                "is one of the most attractive things in his attitude.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                child: Image.asset("images/rahul.png"),
                                radius: 30.0,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "Rahul Badgujar\n (Classmate)",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        icon: Image.asset("images/github.png"),
                                        onPressed: () {
                                          _openRahulGitHub();
                                        }),
                                    IconButton(
                                      icon: Image.asset("images/portfolio.png"),
                                      onPressed: () {
                                        _openRahulPortfolio();
                                      },
                                      iconSize: 30.0,
                                    ),
                                    IconButton(
                                        icon:
                                            Image.asset("images/linkedin.png"),
                                        onPressed: () {
                                          _openRahulLinkedIn();
                                        }),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "We are working together on some projects and Sahil"
                                " is one of the best \npeople to have in the team. I highly recommend"
                                " him as an Android Developer, \nas he is quite good at it"
                                " and his learning pace is really appreciable.\n"
                                "The key factor one can look into Sahil is his dedication"
                                "towards his work \nand learning. And that dedication is very"
                                "helpful in keeping the morale and \nenthusiasm of the team always up."
                                "He is very good at planning things \nand working hard to accomplish them"
                                ". He is a focused person towards his \ngoals and his clear vision"
                                "is one of the most attractive things in his attitude.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
