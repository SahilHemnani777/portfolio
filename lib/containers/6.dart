import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/widgets/reachme.dart';

class Six extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/down.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
        Container(
            child: Column(
          children: [
            SizedBox(height: 400.0),
            Center(
                child: Text(
              "If you need inspiring words,\ndont't do it.",
              style: GoogleFonts.nosifer(
                  textStyle: TextStyle(fontSize: 50, color: Colors.white)),
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              '-Elon Musk',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 620, right: 620),
              child: reachMe(alignment: MainAxisAlignment.spaceBetween,),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Interested in collaborating? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Contact(),
                        ),
                            (route) => false,
                      );
                    },
                    child: Text(
                      "Send me a message",
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    )),
                Text(
                  "🔯 Want to support my work?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Thanks a lot!'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('Contact me: 9518523179'),
                                  Text('Just send a Email: hemnanisahil777@gmail.com'),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Become the website's Sponsor",
                      style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).accentColor,
                          decoration: TextDecoration.underline),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Made with ♥, flutter & ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "vaious tech",
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    )),
                Text(
                  " in India",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            Center(
              child: Text("© Sahil Hemnani 2021",
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ))
      ],
    );
  }
}
