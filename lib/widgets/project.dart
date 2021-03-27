import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  final String name;
  final String description;

  // ignore: non_constant_identifier_names
  final String location_of_image;
  final String github;
  final String linkedIn;

  // ignore: non_constant_identifier_names
  final List<String> tech_used;

  //opening the github source code when clicked on the link
  void _openGitub() async => await canLaunch(this.github)
      ? await launch(this.github)
      : throw 'Could not launch $github';

  //opening the github source code when clicked on the link
  void _openLinkedIn() async => await canLaunch(this.linkedIn)
      ? await launch(this.linkedIn)
      : throw 'Could not launch $linkedIn';

  Project(this.name, this.description, this.location_of_image, this.github,
      this.linkedIn, this.tech_used);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.50,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              //first Text of name and heading
              Text(
                this.name,
                style: GoogleFonts.kalam(
                    textStyle:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
              ),
              //Image of the project which has to be displayed
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 10.0),
                child: GestureDetector(
                  child: Image.asset(
                    this.location_of_image,
                    width: MediaQuery.of(context).size.width * 0.40,
                    height: 400,
                  ),
                  onTap: () {
                    _openLinkedIn();
                  },
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.20,
                  ),
                  IconButton(
                      onPressed: () {
                        return showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(this.name),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text(this.description),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Got it!'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.description)),
                  Text("Description",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500))),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.20,
                  ),
                  IconButton(
                      onPressed: () {
                        _openGitub();
                      },
                      icon: Icon(Icons.code)),
                  Text("Source Code",
                      style: GoogleFonts.kalam(
                          textStyle: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text("Technologies used:",
                    style: GoogleFonts.kalam(
                        textStyle: TextStyle(fontSize: 25.0))),
              ),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.10,
                      maxHeight: 50),
                  // **THIS is the important part**
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tech_used.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            tech_used.elementAt(index) == "images/pygames.png"
                                ? Image.asset(
                                    tech_used.elementAt(index),
                                    width: 90,
                                    height:90,
                                  )
                                : Image.asset(
                                    tech_used.elementAt(index),
                                    width: 30,
                                    height: 30,
                                  ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
